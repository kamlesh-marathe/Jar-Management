package com.vijayneetigroup.root.jar;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import static android.content.ContentValues.TAG;

/**
 * Created by root on 7/6/17.
 */

public class MyDBHandler extends SQLiteOpenHelper {

    private static final Integer DATABASE_VERSION = 1;
    private static final String DATABASE_NAME = "jar.db";
    private static final String USER_TABLE_NAME = "reg_user";
    private static final String ROUTE_TABLE_NAME = "route";
    private static final String CUSTOMER_TABLE_NAME = "customer";
    private static final String ENTRY_TABLE_NAME = "entry";
    private static final String JAR_TABLE_NAME = "jarbtld";
    private static final String DETAILJAR_TABLE_NAME = "detailjar";
    private static final String ROUTE_COLUMN_ID = "_rid";
    private static final String ROUTE_COLUMN_ONID = "_ronid";
    private static final String ROUTE_COLUMN_NAME = "_rname";
    private static final String ROUTE_COLUMN_DESC = "_rdesc";
    private static final String USER_COLUMN_ID = "_uid";
    private static final String USER_COLUMN_USERNAME = "_uname";
    private static final String USER_COLUMN_PASSWORD = "_upass";
    private static final String CUSTOMER_COLUMN_ID = "_cid";
    private static final String CUSTOMER_COLUMN_NAME = "_cname";
    private static final String CUSTOMER_COLUMN_COMPNAME = "_ccompname";
    private static final String CUSTOMER_COLUMN_MOB = "_cmob";
    private static final String CUSTOMER_COLUMN_EMAIL = "_cemail";
    private static final String CUSTOMER_COLUMN_ADDRESS = "_cadd";
    private static final String CUSTOMER_COLUMN_ROUTE = "_croute";
    private static final String CUSTOMER_COLUMN_ONID = "_conid";
    private static final String CUSTOMER_COLUMN_BPRC = "_cbprc";
    private static final String CUSTOMER_COLUMN_JARP = "_cjarprc";
    private static final String ENTRY_COLUMN_ID = "_eid";
    private static final String ENTRY_COLUMN_CUSTID = "_ecid";
    private static final String ENTRY_COLUMN_NBTL = "_enbtl";
    private static final String ENTRY_COLUMN_NJAR = "_enjar";
    private static final String ENTRY_COLUMN_RNBTL = "_ernbtl";
    private static final String ENTRY_COLUMN_RNJAR = "_ernjar";
    private static final String ENTRY_COLUMN_DATE = "_edate";
    private static final String ENTRY_COLUMN_AMOUNT = "_eamount";
    private static final String JAR_COLUMN_ID = "_jid";
    private static final String JAR_COLUMN_JTLE = "_jtjar";
    private static final String JAR_COLUMN_BTLE = "_jtbtl";
    private static final String JAR_COLUMN_JFLD = "_jfjar";
    private static final String JAR_COLUMN_BFLD = "_jfbtl";
    private static final String DETAILJAR_COLUMN_ID = "_did";
    private static final String DETAILJAR_COLUMN_CUSTONID = "_dcustonid";
    private static final String DETAILJAR_COLUMN_CUSTOFID = "_dcustofid";
    private static final String DETAILJAR_COLUMN_JARISSUED = "_djarish";
    private static final String DETAILJAR_COLUMN_JARRETURNED = "_djarret";
    private static final String DETAILJAR_COLUMN_JARAMOUNT = "_djaramt";
    private static final String DETAILJAR_COLUMN_BTLISSUED = "_dbtlish";
    private static final String DETAILJAR_COLUMN_BTLRETURNED = "_dbtlret";
    private static final String DETAILJAR_COLUMN_BTLAMOUNT = "_dbtlamt";
    private static final String DETAILJAR_COLUMN_PAID = "_dpaid";

    Context cont;

    public MyDBHandler(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, DATABASE_NAME, factory, DATABASE_VERSION);
        cont=context;
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String query = "CREATE TABLE IF NOT EXISTS " + USER_TABLE_NAME + " ( " +
                USER_COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                USER_COLUMN_USERNAME + " TEXT," +
                USER_COLUMN_PASSWORD + " TEXT);";
        Log.d(TAG,"TABLE CREATING "+query);
        db.execSQL(query);
        Log.d(TAG,"TABLE Successfull");

        query = "CREATE TABLE IF NOT EXISTS " + ROUTE_TABLE_NAME + " ( " +
                ROUTE_COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                ROUTE_COLUMN_ONID + " INTEGER," +
                ROUTE_COLUMN_NAME + " TEXT," +
                ROUTE_COLUMN_DESC + " TEXT" +
                ");";
        Log.d(TAG,"TABLE CREATING "+query);
        db.execSQL(query);
        Log.d(TAG,"TABLE Successfull");

        query = "CREATE TABLE IF NOT EXISTS " + CUSTOMER_TABLE_NAME + " ( " +
                CUSTOMER_COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                CUSTOMER_COLUMN_ONID + " INTEGER," +
                CUSTOMER_COLUMN_NAME + " TEXT," +
                CUSTOMER_COLUMN_COMPNAME + " TEXT," +
                CUSTOMER_COLUMN_MOB + " TEXT," +
                CUSTOMER_COLUMN_EMAIL + " TEXT," +
                CUSTOMER_COLUMN_ADDRESS + " TEXT," +
                CUSTOMER_COLUMN_ROUTE + " TEXT," +
                CUSTOMER_COLUMN_BPRC + " INTEGER," +
                CUSTOMER_COLUMN_JARP + " INTEGER" +
                ");";
        Log.d(TAG,"TABLE CREATING "+query);
        db.execSQL(query);
        Log.d(TAG,"TABLE Successfull");

        query = "CREATE TABLE IF NOT EXISTS " + ENTRY_TABLE_NAME + " ( " +
                ENTRY_COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                ENTRY_COLUMN_CUSTID + " INTEGER," +
                ENTRY_COLUMN_NBTL + " INTEGER," +
                ENTRY_COLUMN_NJAR + " INTEGER," +
                ENTRY_COLUMN_RNBTL + " INTEGER," +
                ENTRY_COLUMN_RNJAR + " INTEGER," +
                ENTRY_COLUMN_DATE + " DATETIME DEFAULT CURRENT_TIMESTAMP," +
                ENTRY_COLUMN_AMOUNT + " INTEGER" +
                ");";
        Log.d(TAG,"TABLE CREATING "+query);
        db.execSQL(query);
        Log.d(TAG,"TABLE Successfull");

        query = "CREATE TABLE IF NOT EXISTS " + DETAILJAR_TABLE_NAME + " ( " +
                DETAILJAR_COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                DETAILJAR_COLUMN_CUSTONID + " INTEGER," +
                DETAILJAR_COLUMN_CUSTOFID + " INTEGER," +
                DETAILJAR_COLUMN_JARISSUED + " INTEGER," +
                DETAILJAR_COLUMN_JARRETURNED + " INTEGER," +
                DETAILJAR_COLUMN_JARAMOUNT + " INTEGER," +
                DETAILJAR_COLUMN_BTLISSUED + " INTEGER," +
                DETAILJAR_COLUMN_BTLRETURNED + " INTEGER," +
                DETAILJAR_COLUMN_BTLAMOUNT + " INTEGER," +
                DETAILJAR_COLUMN_PAID + " INTEGER" +
                ");";
        Log.d(TAG,"TABLE CREATING "+query);
        db.execSQL(query);
        Log.d(TAG,"TABLE Successfull");

        query = "CREATE TABLE IF NOT EXISTS " + JAR_TABLE_NAME + " ( " +
                JAR_COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                JAR_COLUMN_JTLE + " INTEGER," +
                JAR_COLUMN_JFLD + " INTEGER," +
                JAR_COLUMN_BTLE + " INTEGER," +
                JAR_COLUMN_BFLD + " INTEGER" +
                ");";
        Log.d(TAG,"TABLE CREATING "+query);
        db.execSQL(query);
        initialise(db);
        Log.d(TAG,"TABLE Successfull");

    }

    protected void initialise(SQLiteDatabase db) {
        Cursor cursor=db.rawQuery("SELECT * FROM "+JAR_TABLE_NAME,null);
        cursor.moveToFirst();
        if (cursor.isAfterLast())
        {
            Log.d(TAG,"Inserting Data");
            ContentValues values = new ContentValues();
            Integer zero=0;
            values.put(JAR_COLUMN_JTLE,100);
            values.put(JAR_COLUMN_JFLD,80);
            values.put(JAR_COLUMN_BTLE,100);
            values.put(JAR_COLUMN_BFLD,90);
            db.insert(JAR_TABLE_NAME, null, values);
        }
        cursor.close();
    }

    public Integer getnumber(String task, Integer counting) {

        Integer count=0;
        SQLiteDatabase db=getWritableDatabase();
        String query;
        query="SELECT * FROM "+JAR_TABLE_NAME;
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        if (task.equals("jtotal"))
        {
            count=cursor.getInt(cursor.getColumnIndex(JAR_COLUMN_JTLE));
        }
        else if (task.equals("jfilled"))
        {
            count=cursor.getInt(cursor.getColumnIndex(JAR_COLUMN_JFLD));
        }
        else if (task.equals("btotal"))
        {
            count=cursor.getInt(cursor.getColumnIndex(JAR_COLUMN_BTLE));
        }
        else if (task.equals("bfilled"))
        {
            count=cursor.getInt(cursor.getColumnIndex(JAR_COLUMN_BFLD));
        }
        else if (task.equals("jtle"))
        {
            db.execSQL("UPDATE "+JAR_TABLE_NAME+" SET "+JAR_COLUMN_JTLE+" = "+counting);
        }
        else if (task.equals("jfld"))
        {
            db.execSQL("UPDATE "+JAR_TABLE_NAME+" SET "+JAR_COLUMN_JFLD+" = "+counting);
        }
        else if (task.equals("btle"))
        {
            db.execSQL("UPDATE "+JAR_TABLE_NAME+" SET "+JAR_COLUMN_BTLE+" = "+counting);
        }
        else if (task.equals("bfld"))
        {
            db.execSQL("UPDATE "+JAR_TABLE_NAME+" SET "+JAR_COLUMN_BFLD+" = "+counting);
        }
        else if (task.equals("jdelivered"))
        {
            Integer initialcount=0;
            initialcount=cursor.getInt(cursor.getColumnIndex(JAR_COLUMN_JFLD));
            db.execSQL("UPDATE "+JAR_TABLE_NAME+" SET "+JAR_COLUMN_JFLD+" = "+(initialcount-counting));
        }
        else if (task.equals("bdelivered"))
        {
            Integer initialcount=0;
            initialcount=cursor.getInt(cursor.getColumnIndex(JAR_COLUMN_BFLD));
            db.execSQL("UPDATE "+JAR_TABLE_NAME+" SET "+JAR_COLUMN_BFLD+" = "+(initialcount-counting));
        }

        db.close();
        return count;
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + USER_TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + ROUTE_TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + CUSTOMER_TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + ENTRY_TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + DETAILJAR_TABLE_NAME);
        onCreate(db);
    }

    protected void adduser(String uname, String pass) {
        if (uname == null || pass == null)
            return;
        ContentValues values = new ContentValues();
        values.put(USER_COLUMN_USERNAME, uname);
        values.put(USER_COLUMN_PASSWORD, pass);
        SQLiteDatabase db = getWritableDatabase();
        db.insert(USER_TABLE_NAME, null, values);
        db.close();
    }

    public boolean isNetworkAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) cont.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public void synccustomer(final Context context) {

        if (!isNetworkAvailable())
        {
            Toast.makeText(cont, "No Internet Connection", Toast.LENGTH_SHORT).show();
            return;
        }
        Toast.makeText(context, "Syncing data...", Toast.LENGTH_SHORT).show();
        Log.d(TAG,"Sync Run");
        SQLiteDatabase db = getWritableDatabase();
        String query;
        query="SELECT MAX("+CUSTOMER_COLUMN_ONID+") AS "+CUSTOMER_COLUMN_ONID+" FROM "+CUSTOMER_TABLE_NAME;
        int custid=0;
        Cursor cur=db.rawQuery(query,null);
        cur.moveToFirst();
        if (!cur.isAfterLast())
        {
            custid = cur.getInt(cur.getColumnIndex(CUSTOMER_COLUMN_ONID));
            Log.d(TAG,""+custid);
            BackgroundWork backgroundWork=new BackgroundWork(context);
            backgroundWork.execute("downloadcust",String.valueOf(custid));
            backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
                @Override
                public void OnTaskFihishedEvent(String Result) {
                    MyDBHandler dbHandler=new MyDBHandler(context,null,null,1);
                    try {
                        JSONArray jsonArray = new JSONArray(Result);
                        if (jsonArray!=null)
                        {
                            for (int i=0;i<jsonArray.length();i++)
                            {
                                JSONObject jsonObject=jsonArray.getJSONObject(i);
                                Integer bprc=Integer.valueOf(jsonObject.getString("Lrate"));
                                Integer jprc=Integer.valueOf(jsonObject.getString("rate"));
                                dbHandler.addcustomer(Integer.valueOf(jsonObject.getString("CustID")),
                                        jsonObject.getString("CustName"),
                                        jsonObject.getString("ComName"),
                                        jsonObject.getString("mobile"),
                                        jsonObject.getString("email"),
                                        jsonObject.getString("Address"),
                                        String.valueOf(getroutename(jsonObject.getInt("RouteId"),context)),
                                        bprc,
                                        jprc,
                                        true
                                );

                                dbHandler.addcustdetail(
                                        Integer.valueOf(jsonObject.getString("CustID")),
                                        Integer.valueOf(jsonObject.getString("NumberOfJar")),
                                        Integer.valueOf(jsonObject.getString("RNumberOfJar")),
                                        Integer.valueOf(jsonObject.getString("AmountOfJar")),
                                        Integer.valueOf("0"),
                                        Integer.valueOf("0"),
                                        Integer.valueOf("0"),
                                        Integer.valueOf(jsonObject.getString("Paidamt"))
                                        );
                            }
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }

        query = "SELECT * FROM " + CUSTOMER_TABLE_NAME + " WHERE " + CUSTOMER_COLUMN_ONID + " = 0";
        final Cursor cursor = db.rawQuery(query, null);
        cursor.moveToFirst();
        String[] data = new String[10];
        data[0] = "add_cust_online";
        while (!cursor.isAfterLast()) {
            data[1] = cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_NAME));
            data[2] = cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_COMPNAME));
            data[3] = cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_MOB));
            data[4] = cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_EMAIL));
            data[5] = cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_ADDRESS));
            data[6] = String.valueOf(getrouteid(cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_ROUTE))));
            data[7] = String.valueOf(cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ID)));
            data[8] = String.valueOf(cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_BPRC)));
            data[9] = String.valueOf(cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_JARP)));
            BackgroundWork backgroundWork = new BackgroundWork(context);
            backgroundWork.execute(data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8],data[9]);
            backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
                @Override
                public void OnTaskFihishedEvent(String Result) {
                    Log.d(TAG,""+Result);
                }
            });
            cursor.moveToNext();
        }
    }

    private void addcustdetail(Integer custID, Integer numberOfJar, Integer rNumberOfJar, Integer amountOfJar, Integer numberofbtl, Integer rnumberofbtl, Integer amountOfbtl, Integer paidamt) {
        ContentValues values=new ContentValues();
        SQLiteDatabase db=getWritableDatabase();
        Cursor cursor=db.rawQuery("SELECT * FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_ONID+" = "+custID,null);
        cursor.moveToFirst();
        Integer custofID=cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ID));
        values.put(DETAILJAR_COLUMN_CUSTONID,custID);
        values.put(DETAILJAR_COLUMN_CUSTOFID,custofID);
        values.put(DETAILJAR_COLUMN_JARISSUED,numberOfJar);
        values.put(DETAILJAR_COLUMN_JARRETURNED,rNumberOfJar);
        values.put(DETAILJAR_COLUMN_JARAMOUNT,amountOfJar);
        values.put(DETAILJAR_COLUMN_BTLISSUED,numberofbtl);
        values.put(DETAILJAR_COLUMN_BTLRETURNED,rnumberofbtl);
        values.put(DETAILJAR_COLUMN_BTLAMOUNT,amountOfbtl);
        values.put(DETAILJAR_COLUMN_PAID,paidamt);

        db.insert(DETAILJAR_TABLE_NAME,null,values);
        db.close();
    }

    public void updatecustdetail(String custname, int number1, int number2, int number3, int number4, int btlsumamt, int jarsumamt) {

        SQLiteDatabase db=getWritableDatabase();
        Cursor cursor=db.rawQuery("SELECT * FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_NAME+" = '"+custname+"'",null);
        cursor.moveToFirst();
        Integer custofID=cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ID));
        String query;
        query="SELECT * FROM "+DETAILJAR_TABLE_NAME+" WHERE "+DETAILJAR_COLUMN_CUSTOFID+" = "+custofID;
        Cursor cursor1=db.rawQuery(query,null);
        cursor1.moveToFirst();
        Integer newjarnoisued=cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_JARISSUED))+number2;
        Integer newjarnoreturn=cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_JARRETURNED))+number4;
        Integer newbtlnoisued=cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_BTLISSUED))+number1;
        Integer newbtlnoreturn=cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_BTLRETURNED))+number3;
        Integer newbtlamt=cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_BTLAMOUNT))+btlsumamt;
        Integer newjaramt=cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_JARAMOUNT))+jarsumamt;

        query="UPDATE "+DETAILJAR_TABLE_NAME+
                " SET "+DETAILJAR_COLUMN_JARISSUED +" = "+newjarnoisued+
                ", "+DETAILJAR_COLUMN_JARRETURNED +" = "+newjarnoreturn+
                ", "+DETAILJAR_COLUMN_BTLISSUED +" = "+newbtlnoisued+
                ", "+DETAILJAR_COLUMN_BTLRETURNED +" = "+newbtlnoreturn+
                ", "+DETAILJAR_COLUMN_JARAMOUNT +" = "+newjaramt+
                ", "+DETAILJAR_COLUMN_BTLAMOUNT +" = "+newbtlamt
                +" WHERE "+DETAILJAR_COLUMN_CUSTOFID+" = "+custofID;
        db.execSQL(query);
    }

    protected String[] getcustdetail(String custname) {
        String data[]=new String[14];
        String query;
        SQLiteDatabase db=getReadableDatabase();
        query="SELECT * FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_NAME+" = '"+custname+"'";
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        if (!cursor.isAfterLast())
        {
            Integer custofid=cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ID));
            data[0]=String.valueOf(cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ONID)));
            data[1]=cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_MOB));
            data[2]=cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_EMAIL));
            data[3]=cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_ROUTE));
            data[4]=cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_JARP));
            data[5]=cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_BPRC));
            data[6]=cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_ADDRESS));
            Cursor cursor1=db.rawQuery("SELECT * FROM "+DETAILJAR_TABLE_NAME+" WHERE "+DETAILJAR_COLUMN_CUSTOFID+" = "+custofid,null);
            cursor1.moveToFirst();
            if (!cursor1.isAfterLast()){
                data[7]=String.valueOf(cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_JARISSUED)));
                data[8]=String.valueOf(cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_JARRETURNED)));
                data[9]=String.valueOf(cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_BTLISSUED)));
                data[10]=String.valueOf(cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_BTLRETURNED)));
                data[11]=String.valueOf(cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_JARAMOUNT)));
                data[12]=String.valueOf(cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_BTLAMOUNT)));
                data[13]=String.valueOf(cursor1.getInt(cursor1.getColumnIndex(DETAILJAR_COLUMN_PAID)));
            }
            cursor1.close();
        }
        cursor.close();
        return data;
    }

    public void syncentries(Context context) {
        if (!isNetworkAvailable())
        {
            Toast.makeText(cont, "No Internet Connection", Toast.LENGTH_SHORT).show();
            return;
        }
        SQLiteDatabase db= getWritableDatabase();
        String query = "SELECT * FROM " + ENTRY_TABLE_NAME;
        Cursor cursor = db.rawQuery(query, null);
        cursor.moveToFirst();
        String[] data = new String[9];
        data[0] = "add_entry_online";
        while (!cursor.isAfterLast()) {
            data[1] = String.valueOf(getcustonid((cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_CUSTID)))));
            data[2] = cursor.getString(cursor.getColumnIndex(ENTRY_COLUMN_DATE));
            data[3] = String.valueOf(cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_NBTL)));
            data[4] = String.valueOf(cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_NJAR)));
            data[5] = String.valueOf(cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_AMOUNT)));
            data[6] = String.valueOf(cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_ID)));
            data[7] = String.valueOf(cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_RNJAR)));
            data[8] = String.valueOf(cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_RNBTL)));

            BackgroundWork backgroundWork = new BackgroundWork(context);
            backgroundWork.execute(data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8]);
            backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
                @Override
                public void OnTaskFihishedEvent(String Result) {
                    Log.d(TAG,""+Result);
                }
            });
            cursor.moveToNext();
        }
    }

    private int getcustonid(Integer custid) {
        int custonid=0;
        String query="SELECT * FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_ID+" = '"+custid+"'";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast())
        {
            custonid=cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ONID));
            cursor.moveToNext();
        }
        return custonid;
    }

    public void updatecustoid(String cid, String result) {
        Integer onlineid=Integer.valueOf(result);
        Integer oflineid=Integer.valueOf(cid);
        String query="UPDATE "+CUSTOMER_TABLE_NAME+" SET "+CUSTOMER_COLUMN_ONID+" = "+onlineid+" WHERE "+CUSTOMER_COLUMN_ID+" = "+oflineid;
        SQLiteDatabase db=getWritableDatabase();
        db.execSQL(query);
    }

    protected void debugdisplay(){
        String query="SELECT * FROM "+CUSTOMER_TABLE_NAME;
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast())
        {
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ID)));
            Log.d(TAG,cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_NAME)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_BPRC)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_JARP)));

            cursor.moveToNext();
        }

        query="SELECT * FROM "+ENTRY_TABLE_NAME;
        cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast()){
            Log.d(TAG,"New Entry : "+cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_CUSTID)));
            Log.d(TAG,""+cursor.getString(cursor.getColumnIndex(ENTRY_COLUMN_DATE)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_AMOUNT)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_NJAR)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_NBTL)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_RNJAR)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(ENTRY_COLUMN_RNBTL)));
            cursor.moveToNext();
        }

        query="SELECT * FROM "+ROUTE_TABLE_NAME;
        cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast()){
            Log.d(TAG,"New Route : "+cursor.getInt(cursor.getColumnIndex(ROUTE_COLUMN_ID)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(ROUTE_COLUMN_ONID)));
            Log.d(TAG,""+cursor.getString(cursor.getColumnIndex(ROUTE_COLUMN_NAME)));
            Log.d(TAG,""+cursor.getString(cursor.getColumnIndex(ROUTE_COLUMN_DESC)));
            cursor.moveToNext();
        }

        query="SELECT * FROM "+DETAILJAR_TABLE_NAME;
        cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast()){
            Log.d(TAG,"New Detail : "+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_ID)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_CUSTOFID)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_JARISSUED)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_JARRETURNED)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_JARAMOUNT)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_BTLISSUED)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_BTLAMOUNT)));
            Log.d(TAG,""+cursor.getInt(cursor.getColumnIndex(DETAILJAR_COLUMN_PAID)));
            cursor.moveToNext();
        }

    }

    public Integer getbtlprc(String s) {
        String query="SELECT * FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_NAME+" = '"+s+"'";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        Integer prc=-1;
        while (!cursor.isAfterLast())
        {
            prc=cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_BPRC));
            cursor.moveToNext();
        }
        return prc;
    }

    public Integer getjarprc(String s) {
        String query="SELECT * FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_NAME+" = '"+s+"'";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        Integer prc=-1;
        while (!cursor.isAfterLast())
        {
            prc=cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_JARP));
            cursor.moveToNext();
        }
        return prc;
    }

    protected String getroutename(int rid,Context context){
        String rname="";
        String query;
        query="SELECT * FROM "+ROUTE_TABLE_NAME+" WHERE "+ROUTE_COLUMN_ONID+" = "+rid;
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        if (!cursor.isAfterLast())
            rname=cursor.getString(cursor.getColumnIndex(ROUTE_COLUMN_NAME));
//        else
//            Toast.makeText(context, "Please Sync Route First.", Toast.LENGTH_SHORT).show();
        return rname;
    }

    public String getroutedesc(String routename) {
        String rdesc="";
        String query;
        query="SELECT * FROM "+ROUTE_TABLE_NAME+" WHERE "+ROUTE_COLUMN_NAME+" = '"+routename+"'";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        rdesc=cursor.getString(cursor.getColumnIndex(ROUTE_COLUMN_DESC));
        return rdesc;
    }

    protected int getrouteid(String routename){
        int rid=0;
        String query;
        query="SELECT * FROM "+ROUTE_TABLE_NAME+" WHERE "+ROUTE_COLUMN_NAME+" = '"+routename+"'";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        rid=cursor.getInt(cursor.getColumnIndex(ROUTE_COLUMN_ONID));
        return rid;
    }

    public void makeentry(String custname,  int number1, int number2,int number3, int number4, int amount) {
        Integer custofid=getcustofid(custname);
        if (custofid == 0)
        {
            Toast.makeText(cont, "Invalid Customer", Toast.LENGTH_SHORT).show();
            return;
        }
        ContentValues values=new ContentValues();
        values.put(ENTRY_COLUMN_CUSTID,custofid);
        values.put(ENTRY_COLUMN_NBTL,number1);
        values.put(ENTRY_COLUMN_NJAR,number2);
        values.put(ENTRY_COLUMN_RNBTL,number3);
        values.put(ENTRY_COLUMN_RNJAR,number4);
        values.put(ENTRY_COLUMN_AMOUNT,amount);

        SQLiteDatabase db=getWritableDatabase();
        db.insert(ENTRY_TABLE_NAME,null,values);
        db.close();
    }

    private Integer getcustofid(String custname) {
        Integer custofid=0;
        String query="SELECT * FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_NAME+" = '"+custname+"'";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast())
        {
            custofid=cursor.getInt(cursor.getColumnIndex(CUSTOMER_COLUMN_ID));
            cursor.moveToNext();
        }
        return custofid;
    }

    protected void addcustomer(Integer onid, String company, String name, String mob, String email, String add, String route, Integer flit, Integer jarpr, boolean status) {
        ContentValues values=new ContentValues();

        values.put(CUSTOMER_COLUMN_ONID,onid);
        values.put(CUSTOMER_COLUMN_NAME,name);
        values.put(CUSTOMER_COLUMN_COMPNAME,company);
        values.put(CUSTOMER_COLUMN_MOB,mob);
        values.put(CUSTOMER_COLUMN_EMAIL,email);
        values.put(CUSTOMER_COLUMN_ADDRESS,add);
        values.put(CUSTOMER_COLUMN_ROUTE,route);
        values.put(CUSTOMER_COLUMN_BPRC,flit);
        values.put(CUSTOMER_COLUMN_JARP,jarpr);

        SQLiteDatabase db=getWritableDatabase();
        db.insert(CUSTOMER_TABLE_NAME,null,values);
        db.close();
    }

    protected void removecustomer(Integer cid){
        String query="DELETE FROM "+CUSTOMER_TABLE_NAME+" WHERE "+CUSTOMER_COLUMN_ID+" = "+cid;
        SQLiteDatabase db=getWritableDatabase();
        db.execSQL(query);
        db.close();
    }

    protected void addroute(Integer roid,String rname,String rdesc) {
        ContentValues values=new ContentValues();
        values.put(ROUTE_COLUMN_ONID,roid);
        values.put(ROUTE_COLUMN_NAME,rname);
        values.put(ROUTE_COLUMN_DESC,rdesc);
        SQLiteDatabase db=getWritableDatabase();
        db.insert(ROUTE_TABLE_NAME,null,values);
        db.close();
    }


    public String[] displayroute() {
        String query="SELECT * FROM "+ROUTE_TABLE_NAME;
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        String[] data = new String[cursor.getCount()];
        int i=0;
        while (!cursor.isAfterLast())
        {
            data[i]=cursor.getString(cursor.getColumnIndex(ROUTE_COLUMN_NAME));
            i++;
            cursor.moveToNext();
        }
        Log.d(TAG,"Returning Route");
        return data;
    }

    public String[] displaycustomer() {
        String query="SELECT * FROM "+CUSTOMER_TABLE_NAME;
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        String customers[]=new String[cursor.getCount()];
        int i=0;
        while (!cursor.isAfterLast())
        {
            customers[i]=cursor.getString(cursor.getColumnIndex(CUSTOMER_COLUMN_NAME));
            i++;
            cursor.moveToNext();
        }
        return customers;
    }

    protected Boolean aunthenticate(String username, String password) {
        String query="SELECT * FROM "+USER_TABLE_NAME+" WHERE username='"+username+"' AND password='"+password+"'";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        if (cursor.isAfterLast())
        {
            return false;
        }
        else
            return true;
    }

    public Boolean chkUser() {
        String query="SELECT * FROM "+USER_TABLE_NAME+" WHERE 1";
        SQLiteDatabase db=getReadableDatabase();
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        if (cursor.isAfterLast())
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    protected void removeroute()
    {
        String query="DELETE FROM "+ROUTE_TABLE_NAME;
        SQLiteDatabase db=getWritableDatabase();
        db.execSQL(query);
        db.close();
    }

    public Boolean removeuser()
    {
        if (!isNetworkAvailable())
        {
            Toast.makeText(cont, "Please Connect to Internet First to Sync the Data...", Toast.LENGTH_SHORT).show();
            return false;
        }
        final BackgroundWork backgroundWork=new BackgroundWork(cont);
        backgroundWork.execute("route_sync");
        backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
            @Override
            public void OnTaskFihishedEvent(String Result) {
                try {
                    JSONArray jsonArray = new JSONArray(Result);
                    removeroute();
                    for (int i=0;i<jsonArray.length();i++)
                    {
                        JSONObject jsonObject=jsonArray.getJSONObject(i);
                        addroute(Integer.valueOf(jsonObject.getString("RouteId")),jsonObject.getString("RouteName"),jsonObject.getString("RouteDescription"));
                    }
                    synccustomer(cont);
                    syncentries(cont);
                    String query="DELETE FROM "+USER_TABLE_NAME;
                    SQLiteDatabase db=getWritableDatabase();
                    db.execSQL(query);
                    db.close();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
        return true;
    }

    public void removeentry(String eid) {
        Integer enid=Integer.valueOf(eid);
        String query="DELETE FROM "+ENTRY_TABLE_NAME+" WHERE "+ENTRY_COLUMN_ID+" = "+enid;
        SQLiteDatabase db=getWritableDatabase();
        db.execSQL(query);
        db.close();
    }
}
