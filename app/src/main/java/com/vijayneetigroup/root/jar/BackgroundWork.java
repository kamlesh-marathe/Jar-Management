package com.vijayneetigroup.root.jar;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

import static android.content.ContentValues.TAG;

/**
 * Created by root on 8/6/17.
 */

public class BackgroundWork extends AsyncTask<String,Void,String> {

    Context context;
    BackgroundWork(Context cont) {
        context=cont;
    }

    public boolean isNetworkAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override
    protected String doInBackground(String... params) {

        Boolean connectionstatus = isNetworkAvailable();
        Log.d(TAG,"Checking Internet");
        if (!connectionstatus)
        {
            Log.d(TAG,"No Internet");
            Toast.makeText(context, "Required Internet Connection !!!", Toast.LENGTH_SHORT).show();
            return "No Connection";
        }

        String task=params[0];
        String login_url;
        String ip;
        ip="192.168.1.37";   //Home
        ip="192.168.43.240"; //THU
        ip="192.168.1.114";  //VSP
        ip="www.vijayneetigroup.com/vsp_jar/demo2";  //Server
        if (task.equals("authenticate"))
        {
            String username=params[1];
            String password=params[2];
            try {
                login_url = "http://"+ip+"/Jar/authenticate.php";
                URL url=new URL(login_url);
                HttpURLConnection httpURLConnection= (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream=httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter=new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8"));
                String postdata = URLEncoder.encode("username","UTF-8")+"="+URLEncoder.encode(username,"UTF-8")+"&"
                        +URLEncoder.encode("password","UTF-8")+"="+URLEncoder.encode(password,"UTF-8");
                bufferedWriter.write(postdata);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
                InputStream inputStream=httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                String result="";
                String line="";
                while ((line= bufferedReader.readLine())!=null)
                {
                    result+=line;
                }
                bufferedReader.close();
                inputStream.close();
                return result;

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if (task.equals("route_sync"))
        {
            try {
                login_url = "http://"+ip+"/Jar/routegetter.php";
                URL url=new URL(login_url);
                HttpURLConnection httpURLConnection= (HttpURLConnection) url.openConnection();
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                InputStream inputStream=httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                String result="";
                String line="";
                while ((line= bufferedReader.readLine())!=null)
                {
//                    Toast.makeText(context, "line", Toast.LENGTH_SHORT).show();
                    result+=line;
                }
                bufferedReader.close();
                inputStream.close();
                return result;
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if (task.equals("add_cust_online"))
        {
            String data[]= new String[10];
            for (int i=1;i<10;i++){
                data[i]=params[i];
            }
            try {
                login_url = "http://"+ip+"/Jar/addcustonline.php";
//                login_url = "http://192.168.1.114/Jar/addcustonline.php";
                Log.d(TAG,"Adding User Data");
                URL url=new URL(login_url);
                HttpURLConnection httpURLConnection= (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream=httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter=new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8"));
                String postdata=URLEncoder.encode("name","UTF-8")+"="+URLEncoder.encode(data[1],"UTF-8")+"&"
                        +URLEncoder.encode("compname","UTF-8")+"="+URLEncoder.encode(data[2],"UTF-8")+"&"
                        +URLEncoder.encode("mob","UTF-8")+"="+URLEncoder.encode(data[3],"UTF-8")+"&"
                        +URLEncoder.encode("email","UTF-8")+"="+URLEncoder.encode(data[4],"UTF-8")+"&"
                        +URLEncoder.encode("address","UTF-8")+"="+URLEncoder.encode(data[5],"UTF-8")+"&"
                        +URLEncoder.encode("routeid","UTF-8")+"="+URLEncoder.encode(data[6],"UTF-8")+"&"
                        +URLEncoder.encode("bprc","UTF-8")+"="+URLEncoder.encode(data[8],"UTF-8")+"&"
                        +URLEncoder.encode("jprc","UTF-8")+"="+URLEncoder.encode(data[9],"UTF-8");
                bufferedWriter.write(postdata);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
                InputStream inputStream=httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                String result="";
                String line="";
                while ((line= bufferedReader.readLine())!=null)
                {
                    result+=line;
                }
                bufferedReader.close();
                inputStream.close();
                if (result.equals("Not_Inserted"))
                {
                    Log.d(TAG,"Data Not Inserted in DB");
                    Toast.makeText(context, "Data Not Inserted", Toast.LENGTH_SHORT).show();
                }
                else {
                    Log.d(TAG,"Data Inserted And Forworded ");
                    MyDBHandler dbHandler=new MyDBHandler(context,null,null,1);
                    String cid=data[7];
                    dbHandler.updatecustoid(cid,result);
                }
                return result;

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if (task.equals("downloadcust"))
        {
            String custid=params[1];
            try {
                login_url = "http://"+ip+"/Jar/customergetter.php";
                URL url=new URL(login_url);
                HttpURLConnection httpURLConnection= (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream=httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter=new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8"));
                String postdata = URLEncoder.encode("maxid","UTF-8")+"="+URLEncoder.encode(custid,"UTF-8");
                bufferedWriter.write(postdata);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
                InputStream inputStream=httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                String result="";
                String line="";
                while ((line= bufferedReader.readLine())!=null)
                {
                    result+=line;
                }
                bufferedReader.close();
                inputStream.close();
                Log.d(TAG,"Result obt "+result);
                return result;

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if (task.equals("add_entry_online"))
        {
            String data[]= new String[9];
            for (int i=1;i<9;i++){
                data[i]=params[i];
            }
            try {
                login_url = "http://"+ip+"/Jar/addentry.php";
//                login_url = "http://192.168.1.114/Jar/addcustonline.php";
                Log.d(TAG,"Adding Entry Data");
                URL url=new URL(login_url);
                HttpURLConnection httpURLConnection= (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream=httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter=new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8"));
                String postdata=URLEncoder.encode("cid","UTF-8")+"="+URLEncoder.encode(data[1],"UTF-8")+"&"
                        +URLEncoder.encode("bdate","UTF-8")+"="+URLEncoder.encode(data[2],"UTF-8")+"&"
                        +URLEncoder.encode("Nbtls","UTF-8")+"="+URLEncoder.encode(data[3],"UTF-8")+"&"
                        +URLEncoder.encode("Njars","UTF-8")+"="+URLEncoder.encode(data[4],"UTF-8")+"&"
                        +URLEncoder.encode("RNbtls","UTF-8")+"="+URLEncoder.encode(data[8],"UTF-8")+"&"
                        +URLEncoder.encode("RNjars","UTF-8")+"="+URLEncoder.encode(data[7],"UTF-8")+"&"
                        +URLEncoder.encode("Amount","UTF-8")+"="+URLEncoder.encode(data[5],"UTF-8");
                bufferedWriter.write(postdata);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
                InputStream inputStream=httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                String result="";
                String line="";
                while ((line= bufferedReader.readLine())!=null)
                {
                    result+=line;
                }
                bufferedReader.close();
                inputStream.close();
                if (result.equals("Inserted")){
                    Log.d(TAG,"Data Inserted And Forworded ");
                    MyDBHandler dbHandler=new MyDBHandler(context,null,null,1);
                    String eid=data[6];
                    dbHandler.removeentry(eid);
                }
                else
                {
                    Log.d(TAG,"Data Not Inserted in DB");
                    Toast.makeText(context, "Data Not Inserted", Toast.LENGTH_SHORT).show();
                }
                return result;

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

//    AlertDialog alertDialog;

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
//        alertDialog = new AlertDialog.Builder(context).create();
//        alertDialog.setTitle("Login Status");
//        Toast.makeText(context, "Pre", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onPostExecute(String aVoid) {
        super.onPostExecute(aVoid);
//        alertDialog.setMessage(aVoid);
//        alertDialog.show();

        if(this._task_finished_event != null)
        {
            this._task_finished_event.OnTaskFihishedEvent(aVoid);
        }
    }

    private OnTaskExecutionFinished _task_finished_event;

    public interface OnTaskExecutionFinished
    {
        public void OnTaskFihishedEvent(String Result);
    }


    public void setOnTaskFinishedEvent(OnTaskExecutionFinished _event)
    {
        if(_event != null)
        {
            this._task_finished_event = _event;
        }
    }
}
