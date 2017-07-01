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

    EditText editText1,editText2;
    Button button;
    AutoCompleteTextView autoCompleteTextView;
    TextView textView1;
    Integer jprc,bprc,jcprc,bprc5,bprc10,tval;
    Spinner spinner;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        final View view = inflater.inflate(R.layout.fragment_make_entry, container, false);

        editText1 = (EditText) view.findViewById(R.id.editText3);
        editText2 = (EditText) view.findViewById(R.id.editText11);

        textView1 = (TextView) view.findViewById(R.id.textView37);

        spinner = (Spinner) view.findViewById(R.id.spinner3);
        String[] typeitem = {"Normal Jar","Cold Jar","1 Lit Btl","5 Lit Btl","10 Lit Btl"};
        ArrayAdapter<String> adapter1= new ArrayAdapter<String>(this.getActivity(), R.layout.support_simple_spinner_dropdown_item,typeitem);
        spinner.setAdapter(adapter1);

        jprc=0;
        jcprc=0;
        bprc=0;
        bprc5=0;
        bprc10=0;
        tval=0;

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

                if (!(editText1.length() == 0 || editText1.equals("") || editText1 == null))
                    Number1=Integer.valueOf(s.toString());

                textView1.setText(""+(Number1*bprc)+" Rs");
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

        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                if (spinner.getSelectedItem().toString().equals("Normal Jar"))
                {
                    tval=jprc;
                }
                else if (spinner.getSelectedItem().toString().equals("Cold Jar"))
                {
                    tval=bprc;
                }
                else if (spinner.getSelectedItem().toString().equals("1 Lit Btl"))
                {
                    tval=jcprc;
                }
                else if (spinner.getSelectedItem().toString().equals("5 Lit Btl"))
                {
                    tval=bprc5;
                }
                else if (spinner.getSelectedItem().toString().equals("10 Lit Btl"))
                {
                    tval=bprc10;
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        autoCompleteTextView.setDropDownWidth((getSystem().getDisplayMetrics().widthPixels-100));
        autoCompleteTextView.setThreshold(0);
        autoCompleteTextView.setAdapter(adapter);
        autoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                editText1.setText("0");
                editText2.setText("0");
                jprc=dbHandler.getjarprc(autoCompleteTextView.getText().toString(),1);
                bprc=dbHandler.getbtlprc(autoCompleteTextView.getText().toString(),1);

                jcprc=dbHandler.getjarprc(autoCompleteTextView.getText().toString(),2);
                bprc5=dbHandler.getbtlprc(autoCompleteTextView.getText().toString(),2);
                bprc10=dbHandler.getbtlprc(autoCompleteTextView.getText().toString(),3);

                if (spinner.getSelectedItem().toString().equals("Normal Jar"))
                {
                    tval=jprc;
                }
                else if (spinner.getSelectedItem().toString().equals("Cold Jar"))
                {
                    tval=bprc;
                }
                else if (spinner.getSelectedItem().toString().equals("1 Lit Btl"))
                {
                    tval=jcprc;
                }
                else if (spinner.getSelectedItem().toString().equals("5 Lit Btl"))
                {
                    tval=bprc5;
                }
                else if (spinner.getSelectedItem().toString().equals("10 Lit Btl"))
                {
                    tval=bprc10;
                }

                if (jprc==-1 || bprc==-1)
                    Toast.makeText(getContext(), "Invalid Customer Name", Toast.LENGTH_SHORT).show();
                else
                    button.setEnabled(true);

            }
        });

        button = (Button) view.findViewById(R.id.button6);
        button.setEnabled(false);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int Number1 = 0;
                int Number2 = 0;
                int rate=0;

                if (!(editText1.length() == 0 || editText1.equals("") || editText1 == null))
                    Number1=Integer.valueOf(editText1.getText().toString());

                if (!(editText2.length() == 0 || editText2.equals("") || editText2 == null))
                    Number2=Integer.valueOf(editText2.getText().toString());


//                Log.d(TAG,"Nunbers "+Number3+" "+Number4);
                int Amount= Number1*tval;
                int typecode=0;
                if (spinner.getSelectedItem().toString().equals("Normal Jar"))
                {
                    typecode=1;
                }
                else if (spinner.getSelectedItem().toString().equals("Cold Jar"))
                {
                    typecode=2;
                }
                else if (spinner.getSelectedItem().toString().equals("1 Lit Btl"))
                {
                    typecode=3;
                }
                else if (spinner.getSelectedItem().toString().equals("5 Lit Btl"))
                {
                    typecode=4;
                }
                else if (spinner.getSelectedItem().toString().equals("10 Lit Btl"))
                {
                    typecode=5;
                }

                String custname=autoCompleteTextView.getText().toString();
                Toast.makeText(view.getContext(), "Data Submitted...", Toast.LENGTH_SHORT).show();
                dbHandler.makeentry(custname,Number1,Number2,typecode,Amount);

                if (typecode!=1 && typecode!=2)
                    dbHandler.getnumber("bdelivered",Number1);
                else
                    dbHandler.getnumber("jdelivered",Number1);

                dbHandler.updatecustdetail(custname,Number1,Number2,typecode,Number1*tval);

                FragmentTransaction fragmentTransaction=getFragmentManager().beginTransaction();
                fragmentTransaction.detach(MakeEntry.this).attach(MakeEntry.this).commit();
                autoCompleteTextView.setText("");
            }
        });
        return view;
    }

}
