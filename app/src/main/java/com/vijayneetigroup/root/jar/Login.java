package com.vijayneetigroup.root.jar;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import static android.R.attr.id;
import static android.R.attr.privateImeOptions;
import static android.R.attr.start;
import static android.R.attr.theme;

public class Login extends AppCompatActivity {
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        initialisation();
    }

    private String username;
    private String password;
    Button button;
    EditText editText1,editText2;
    TextView textView;
    private MyDBHandler dbHandler;

    public boolean isNetworkAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    void initialisation() {
        button = (Button) findViewById(R.id.button);
        editText1 = (EditText) findViewById(R.id.editText1);
        editText2 = (EditText) findViewById(R.id.editText2);
        textView = (TextView) findViewById(R.id.textView4);

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                username = editText1.getText().toString();
                password = String.valueOf(editText2.getText());
                Toast.makeText(Login.this, "Username and Password is "+username+" "+password, Toast.LENGTH_SHORT).show();
                dbHandler=new MyDBHandler(Login.this, null, null ,1);
                String task="authenticate";
                if (isNetworkAvailable())
                {
                    Log.d("Login","Checking user ");
                    BackgroundWork backgroundWork=new BackgroundWork(Login.this);
                    backgroundWork.execute(task,username,password);
                    backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
                        @Override
                        public void OnTaskFihishedEvent(String Result) {
                            if (Result.equals("User_Found"))
                            {
                                syncdata();
                                dbHandler.adduser(username,password);

                                final BackgroundWork backgroundWork=new BackgroundWork(Login.this);
                                backgroundWork.execute("route_sync");
                                backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
                                    @Override
                                    public void OnTaskFihishedEvent(String Result) {
                                        try {
                                            JSONArray jsonArray = new JSONArray(Result);
                                            dbHandler.removeroute();
                                            if (jsonArray!=null)
                                                for (int i=0;i<jsonArray.length();i++)
                                                {
                                                    JSONObject jsonObject=jsonArray.getJSONObject(i);
                                                    Log.d("Login","Getting Route "+jsonObject.getString("RouteName"));
                                                    dbHandler.addroute(Integer.valueOf(jsonObject.getString("RouteId")),jsonObject.getString("RouteName"),jsonObject.getString("RouteDescription"));
                                                }
                                        } catch (JSONException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                });
//                            Toast.makeText(Login.this, "Customer Sync in Progress", Toast.LENGTH_SHORT).show();
                                dbHandler.synccustomer(Login.this);
                                dbHandler.syncentries(Login.this);

                                Intent intent=new Intent(Login.this,UserHome.class);
                                startActivity(intent);
                                finish();
                            }
                            else
                            {
                                Toast.makeText(Login.this, "USER_NOT_EXIST", Toast.LENGTH_SHORT).show();
                            }
                        }
                    });
                }
                else
                    Toast.makeText(Login.this, "No Internet Connection", Toast.LENGTH_SHORT).show();



            }
        });

        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(Login.this, "Work is in progress for Forget Password.", Toast.LENGTH_SHORT).show();
                //TODO  Forget Password
                forgetpass();
            }
        });
    }

    private void syncdata() {

    }

    void forgetpass(){

    }

}
