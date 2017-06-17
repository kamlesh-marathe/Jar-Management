package com.vijayneetigroup.root.jar;


import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.text.InputType;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;

import static android.content.ContentValues.TAG;
import static java.lang.Math.max;


/**
 * A simple {@link Fragment} subclass.
 */
public class Front extends Fragment {


    public Front() {
        // Required empty public constructor
    }

    TextView textView1,textView2,textView3,textView4;
    ProgressBar progressBar,progressBar1;
    Integer jtotal,jfilled, btotal,bfilled,progressval1,progressval2;

    @Override
    public View onCreateView(LayoutInflater inflater, final ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view;
        view=inflater.inflate(R.layout.fragment_front, container, false);

        textView1= (TextView) view.findViewById(R.id.textView53);
        textView2= (TextView) view.findViewById(R.id.textView52);
        textView3= (TextView) view.findViewById(R.id.textView51);
        textView4= (TextView) view.findViewById(R.id.textView50);
        progressBar= (ProgressBar) view.findViewById(R.id.progressBar6);
        progressBar1= (ProgressBar) view.findViewById(R.id.progressBar7);

        MyDBHandler dbHandler=new MyDBHandler(view.getContext(),null,null,1);

        jtotal=0;jfilled=0;
        btotal=0;bfilled=0;
        jtotal = dbHandler.getnumber("jtotal",0);
        jfilled = dbHandler.getnumber("jfilled",0);
        btotal = dbHandler.getnumber("btotal",0);
        bfilled = dbHandler.getnumber("bfilled",0);

        jfilled=max(jfilled,0);
        bfilled=max(bfilled,0);

        progressval1=0;
        progressval2=0;
        if (jtotal!=0)
            progressval1= (int) ((float)(jfilled*100)/(float)jtotal);
        if (btotal!=0)
            progressval2= (int) ((float)(bfilled*100)/(float)btotal);
        if (progressval1>=0)
            progressBar.setProgress(progressval1);
        if (progressval2>=0)
            progressBar1.setProgress(progressval2);

        textView1.setText(String.valueOf(jtotal));
        textView2.setText(String.valueOf(jfilled));
        textView3.setText(String.valueOf(btotal));
        textView4.setText(String.valueOf(bfilled));

        textView1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                countnumber=textView1.getText().toString();
                addentryjars("jtle");

            }
        });

        textView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                countnumber=textView2.getText().toString();
                addentryjars("jfld");
            }
        });

        textView3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                countnumber=textView3.getText().toString();
                addentryjars("btle");
            }
        });

        textView4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                countnumber=textView4.getText().toString();
                addentryjars("bfld");
            }
        });
        return view;
    }

    private String countnumber;

    private void addentryjars(final String task) {

        final AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle("Enter Quantity ");
        final EditText input = new EditText(getContext());
        input.setInputType(InputType.TYPE_CLASS_NUMBER);
        input.setMaxWidth(100);
        builder.setView(input);

        builder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                countnumber = input.getText().toString();
                Log.d(TAG,"Input "+countnumber);
                MyDBHandler dbHandler=new MyDBHandler(getContext(),null,null,1);
                if (task.equals("jtle"))
                {
                    textView1.setText(countnumber);
                    dbHandler.getnumber(task,Integer.valueOf(countnumber));
                    jtotal=Integer.valueOf(countnumber);
                }
                else if (task.equals("jfld"))
                {
                    textView2.setText(countnumber);
                    dbHandler.getnumber(task,Integer.valueOf(countnumber));
                    jfilled=Integer.valueOf(countnumber);
                }
                else if (task.equals("btle"))
                {
                    textView3.setText(countnumber);
                    dbHandler.getnumber(task,Integer.valueOf(countnumber));
                    btotal=Integer.valueOf(countnumber);
                }
                else if (task.equals("bfld"))
                {
                    textView4.setText(countnumber);
                    dbHandler.getnumber(task,Integer.valueOf(countnumber));
                    bfilled=Integer.valueOf(countnumber);
                }

                progressval1=0;
                progressval2=0;
                if (jtotal!=0)
                    progressval1= (int) ((float)(jfilled*100)/(float)jtotal);
                if (btotal!=0)
                    progressval2= (int) ((float)(bfilled*100)/(float)btotal);
                if (progressval1>=0)
                    progressBar.setProgress(progressval1);
                if (progressval2>=0)
                    progressBar1.setProgress(progressval2);
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.cancel();
            }
        });

        builder.show();
    }

}
