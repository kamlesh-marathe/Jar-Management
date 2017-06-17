package com.vijayneetigroup.root.jar;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ShareCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import static android.content.res.Resources.getSystem;
import static com.vijayneetigroup.root.jar.R.id.autoCompleteTextView;
import static com.vijayneetigroup.root.jar.R.id.editText1;


/**
 * A simple {@link Fragment} subclass.
 */
public class CustomerDetail extends Fragment {


    public CustomerDetail() {
        // Required empty public constructor
    }

    AutoCompleteTextView autoCompleteTextView;
    TextView textView;
    TextView textView1,textView2,textView3,textView4,textView5,textView6,textView7,textView8;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view= inflater.inflate(R.layout.fragment_customer_detail, container, false);
        final MyDBHandler dbHandler=new MyDBHandler(view.getContext(),null,null,1);
        String[] customer = dbHandler.displaycustomer();
        ArrayAdapter<String> adapter= new ArrayAdapter<String>(this.getActivity(), R.layout.support_simple_spinner_dropdown_item,customer);
        autoCompleteTextView = (AutoCompleteTextView) view.findViewById(R.id.autoCompleteTextView3);

        textView = (TextView) view.findViewById(R.id.textView56);
        textView1 = (TextView) view.findViewById(R.id.textView58);
        textView2 = (TextView) view.findViewById(R.id.textView60);
        textView3 = (TextView) view.findViewById(R.id.textView62);
        textView4 = (TextView) view.findViewById(R.id.textView66);
        textView5 = (TextView) view.findViewById(R.id.textView67);
        textView6 = (TextView) view.findViewById(R.id.textView68);
        textView7 = (TextView) view.findViewById(R.id.textView69);
        textView8 = (TextView) view.findViewById(R.id.textView70);


        autoCompleteTextView.setDropDownWidth((getSystem().getDisplayMetrics().widthPixels-100));
        autoCompleteTextView.setThreshold(0);
        autoCompleteTextView.setAdapter(adapter);

        autoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                textView.setText(autoCompleteTextView.getText().toString());
                String[] detail=dbHandler.getcustdetail(autoCompleteTextView.getText().toString());
                textView1.setText(detail[1]);
                textView2.setText(detail[3]);
                Integer isued=Integer.valueOf(detail[7])- Integer.valueOf(detail[8]);
                textView3.setText(""+isued+" ");
                isued=Integer.valueOf(detail[9])- Integer.valueOf(detail[10]);
                textView4.setText(""+isued+" ");
                isued=Integer.valueOf(detail[11])+Integer.valueOf(detail[12])-Integer.valueOf(detail[13]);
                textView5.setText(""+isued+" Rs");
                textView6.setText(detail[6]);
                isued=Integer.valueOf(detail[4]);
                textView7.setText("  @ "+isued+" Rs");
                isued=Integer.valueOf(detail[5]);
                textView8.setText("  @ "+isued+" Rs");
            }
        });


        return view;
    }

}
