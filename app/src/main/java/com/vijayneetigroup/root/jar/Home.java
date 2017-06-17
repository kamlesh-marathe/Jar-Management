package com.vijayneetigroup.root.jar;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;

public class Home extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        initialisation();
    }

    Button button;
    ProgressBar progressBar;

    void initialisation() {

        button = (Button) findViewById(R.id.button);
        progressBar= (ProgressBar) findViewById(R.id.progressBar);

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                progressBar.setVisibility(View.VISIBLE);
                connection();
            }
        });

        button.performClick();

    }

    public boolean isNetworkAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    void connection(){
        MyDBHandler dbHandler;
        dbHandler=new MyDBHandler(this, null, null ,1);
        Boolean isUserExist=dbHandler.chkUser();
        if (isUserExist)
        {
//            Toast.makeText(this, "USER EXIST", Toast.LENGTH_SHORT).show();
            Intent intent=new Intent(this,UserHome.class);
            startActivity(intent);
            finish();
        }
        else
        {
            if (isNetworkAvailable())
            {
                Intent startlogin = new Intent(Home.this,Login.class);
                startActivity(startlogin);
                finish();
            }
            else
                Toast.makeText(Home.this, "Please check your internet connection...", Toast.LENGTH_SHORT).show();
        }
    }

}
