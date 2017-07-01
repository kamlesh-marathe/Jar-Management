package com.vijayneetigroup.root.jar;


import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;


/**
 * A simple {@link Fragment} subclass.
 */
public class AddCustomer extends Fragment {

    public AddCustomer() {
        // Required empty public constructor
    }

    //100 170 240
    //android:layout_margin="@dimen/fab_margin"
    private MyDBHandler dbHandler;
    Button button;
    EditText editText1,editText2,editText3,editText4,editText5,editText6,editText7,editText8,editText9,editText10;
    Spinner spinner;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        final View view= inflater.inflate(R.layout.fragment_add_customer, container, false);
        dbHandler=new MyDBHandler(view.getContext(),null,null,1);

        button = (Button) view.findViewById(R.id.button2);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String str;
                editText3 = (EditText) view.findViewById(R.id.editText);
                editText4 = (EditText) view.findViewById(R.id.editText5);
                editText5 = (EditText) view.findViewById(R.id.editText6);
                editText6 = (EditText) view.findViewById(R.id.editText7);
                spinner = (Spinner) view.findViewById(R.id.spinner);
                String routesel=spinner.getSelectedItem().toString();
                editText7= (EditText) view.findViewById(R.id.editText8);
                editText8= (EditText) view.findViewById(R.id.editText9);
                editText9= (EditText) view.findViewById(R.id.editText4);
                editText1= (EditText) view.findViewById(R.id.editText10);
                editText2= (EditText) view.findViewById(R.id.editText15);
                editText10= (EditText) view.findViewById(R.id.editText16);

                Integer flit=0;
                Integer flit5=0;
                Integer flit10=0;
                Integer jarpr=0;
                Integer jarprc=0;

                if (!(editText7.length() == 0 || editText7.equals("") || editText7 == null))
                    flit=Integer.valueOf(editText7.getText().toString());
                if (!(editText8.length() == 0 || editText8.equals("") || editText8 == null))
                    jarpr=Integer.valueOf(editText8.getText().toString());
                if (!(editText1.length() == 0 || editText1.equals("") || editText1 == null))
                    flit10=Integer.valueOf(editText1.getText().toString());
                if (!(editText2.length() == 0 || editText2.equals("") || editText2 == null))
                    flit5=Integer.valueOf(editText2.getText().toString());
                if (!(editText10.length() == 0 || editText10.equals("") || editText10 == null))
                    jarprc=Integer.valueOf(editText10.getText().toString());


                if (    !(editText3.length() == 0 || editText3.equals("") || editText3 == null) &&
                        !(editText4.length() == 0 || editText4.equals("") || editText4 == null) &&
                        !(editText6.length() == 0 || editText6.equals("") || editText6 == null))
                {
                    dbHandler.addcustomer(0,editText9.getText().toString(),editText3.getText().toString(),editText4.getText().toString(),editText5.getText().toString(),editText6.getText().toString(),routesel,flit,jarpr,flit5,flit10,jarprc,false);
                    Toast.makeText(getActivity(), "Customer Added", Toast.LENGTH_SHORT).show();
                    editText3.setText("");
                    editText4.setText("");
                    editText5.setText("");
                    editText6.setText("");
                    editText9.setText("");
                    editText1.setText("");
                    editText2.setText("");
                    editText7.setText("");
                    editText8.setText("");
                    editText10.setText("");
                }
                else {
                    Toast.makeText(getContext(), "Please Enter Detail First", Toast.LENGTH_SHORT).show();
                }

            }
        });

        spinner = (Spinner) view.findViewById(R.id.spinner);
        String[] routes = dbHandler.displayroute();
        ArrayAdapter<String> adapter= new ArrayAdapter<String>(this.getActivity(), R.layout.support_simple_spinner_dropdown_item,routes);
        spinner.setAdapter(adapter);


        return view;
    }


}
