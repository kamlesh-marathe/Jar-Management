package com.vijayneetigroup.root.jar;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Collection;

import static android.content.ContentValues.TAG;
import static android.content.res.Resources.getSystem;
import static java.lang.Math.min;
import static java.lang.StrictMath.max;


/**
 * A simple {@link Fragment} subclass.
 */
public class MakeEntry extends Fragment {


    public MakeEntry() {
        // Required empty public constructor
    }

    CheckBox checkBox1,checkBox2;
    EditText editText1,editText2,editText3,editText4;
    Button button;
    AutoCompleteTextView autoCompleteTextView;
    TextView textView1,textView2,textView3;
    Integer jprc,bprc;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        final View view = inflater.inflate(R.layout.fragment_make_entry, container, false);
//        spinner = (Spinner) view.findViewById(R.id.spinner3);
        checkBox1 = (CheckBox) view.findViewById(R.id.checkBox3);
        checkBox2 = (CheckBox) view.findViewById(R.id.checkBox4);
        editText1 = (EditText) view.findViewById(R.id.editText11);
        editText2 = (EditText) view.findViewById(R.id.editText12);
        editText3 = (EditText) view.findViewById(R.id.editText13);
        editText4 = (EditText) view.findViewById(R.id.editText14);
        textView1 = (TextView) view.findViewById(R.id.textView31);
        textView2 = (TextView) view.findViewById(R.id.textView32);
        textView3 = (TextView) view.findViewById(R.id.textView33);
        jprc=0;
        bprc=0;
        editText1.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                int Number1 = 0;
                int Number2 = 0;

                if (!(editText1.length() == 0 || editText1.equals("") || editText1 == null) && checkBox1.isChecked())
                    Number1=Integer.valueOf(s.toString());

                if (!(editText2.length() == 0 || editText2.equals("") || editText2 == null) && checkBox2.isChecked())
                    Number2=Integer.valueOf(editText2.getText().toString());

                textView1.setText(""+(Number1*bprc)+" Rs");
                textView3.setText("Total "+(Number1*bprc+Number2*jprc)+" Rs");
            }
        });

        editText2.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                int Number1 = 0;
                int Number2 = 0;

                if (!(editText1.length() == 0 || editText1.equals("") || editText1 == null) && checkBox1.isChecked())
                    Number1=Integer.valueOf(editText1.getText().toString());

                if (!(editText2.length() == 0 || editText2.equals("") || editText2 == null) && checkBox2.isChecked())
                    Number2=Integer.valueOf(s.toString());

                textView2.setText(""+(Number2*jprc)+" Rs");
                textView3.setText("Total "+(Number1*bprc+Number2*jprc)+" Rs");
            }
        });

        autoCompleteTextView = (AutoCompleteTextView) view.findViewById(R.id.autoCompleteTextView);
        button = (Button) view.findViewById(R.id.button6);
        final MyDBHandler dbHandler=new MyDBHandler(view.getContext(),null,null,1);
        String[] customer = dbHandler.displaycustomer();
        ArrayAdapter<String> adapter= new ArrayAdapter<String>(this.getActivity(), R.layout.support_simple_spinner_dropdown_item,customer);
//        spinner.setAdapter(adapter);
//        spinner.setDropDownWidth(min(mxwidth*15,(getSystem().getDisplayMetrics().widthPixels-60)));
//        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
//            @Override
//            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
//                autoCompleteTextView.setText(spinner.getSelectedItem().toString());
//            }
//
//            @Override
//            public void onNothingSelected(AdapterView<?> parent) {
//
//            }
//        });
//
//        ArrayAdapter<String> adapter1=adapter;
        checkBox1.setEnabled(false);
        checkBox2.setEnabled(false);
        autoCompleteTextView.setDropDownWidth((getSystem().getDisplayMetrics().widthPixels-100));
        autoCompleteTextView.setThreshold(0);
        autoCompleteTextView.setAdapter(adapter);
        autoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                editText1.setText("0");
                editText2.setText("0");
                jprc=dbHandler.getjarprc(autoCompleteTextView.getText().toString());
                bprc=dbHandler.getbtlprc(autoCompleteTextView.getText().toString());
                if (jprc==-1 && bprc==-1)
                    Toast.makeText(getContext(), "Invalid Customer Name", Toast.LENGTH_SHORT).show();
                else
                    button.setEnabled(true);
                if (jprc==0)
                    checkBox2.setEnabled(false);
                else
                    checkBox2.setEnabled(true);
                if (bprc==0)
                    checkBox1.setEnabled(false);
                else
                    checkBox1.setEnabled(true);
            }
        });

        editText1.setEnabled(false);
        editText2.setEnabled(false);
        editText3.setEnabled(false);
        editText4.setEnabled(false);
        checkBox1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (checkBox1.isChecked())
                {
                    editText1.setEnabled(true);
                    editText3.setEnabled(true);
                }
                else
                {
                    editText1.setText("0");
                    editText3.setText("0");
                    editText1.setEnabled(false);
                    editText3.setEnabled(false);
                }
            }
        });
        checkBox2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (checkBox2.isChecked())
                {
                    editText2.setEnabled(true);
                    editText4.setEnabled(true);
                }
                else
                {
                    editText2.setText("0");
                    editText4.setText("0");
                    editText2.setEnabled(false);
                    editText4.setEnabled(false);
                }
            }
        });

        button = (Button) view.findViewById(R.id.button6);
        button.setEnabled(false);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int Number1 = 0;
                int Number2 = 0;
                int Number3 = 0;
                int Number4 = 0;

                if (!(editText1.length() == 0 || editText1.equals("") || editText1 == null) && checkBox1.isChecked() && checkBox1.isEnabled())
                    Number1=Integer.valueOf(editText1.getText().toString());

                if (!(editText2.length() == 0 || editText2.equals("") || editText2 == null) && checkBox2.isChecked() && checkBox2.isEnabled())
                    Number2=Integer.valueOf(editText2.getText().toString());

                if (!(editText3.length() == 0 || editText3.equals("") || editText3 == null) && checkBox1.isChecked() && checkBox1.isEnabled())
                    Number3=Integer.valueOf(editText3.getText().toString());

                if (!(editText4.length() == 0 || editText4.equals("") || editText4 == null) && checkBox2.isChecked() && checkBox2.isEnabled())
                    Number4=Integer.valueOf(editText4.getText().toString());

//                Log.d(TAG,"Nunbers "+Number3+" "+Number4);
                int Amount= Number1*bprc+Number2*jprc;
                String custname=autoCompleteTextView.getText().toString();
                Toast.makeText(view.getContext(), "Data Submitted...", Toast.LENGTH_SHORT).show();
                dbHandler.makeentry(custname,Number1,Number2,Number3,Number4,Amount);
                dbHandler.getnumber("bdelivered",Number1);
                dbHandler.getnumber("jdelivered",Number2);
                dbHandler.updatecustdetail(custname,Number1,Number2,Number3,Number4,Number1*bprc,Number2*jprc);

                FragmentTransaction fragmentTransaction=getFragmentManager().beginTransaction();
                fragmentTransaction.detach(MakeEntry.this).attach(MakeEntry.this).commit();
                autoCompleteTextView.setText("");
            }
        });
        return view;
    }

}
