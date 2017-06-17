package com.vijayneetigroup.root.jar;


import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;

import static android.content.ContentValues.TAG;


/**
 * A simple {@link Fragment} subclass.
 */
public class Route extends Fragment {


    public Route() {
        // Required empty public constructor
    }

    public boolean isNetworkAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    Button button;
    MyDBHandler dbHandler;
    Spinner spinner;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view;
        view=inflater.inflate(R.layout.fragment_route, container, false);
//        final TextView textView= (TextView) view.findViewById(R.id.textView19);
        dbHandler=new MyDBHandler(getContext(),null,null,1);
        button = (Button) view.findViewById(R.id.button4);
        button.setEnabled(false);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                Toast.makeText(getActivity(), "Data Sync in Progress.", Toast.LENGTH_SHORT).show();
                if (isNetworkAvailable())
                {
                    Toast.makeText(getContext(), "Route Syncing", Toast.LENGTH_SHORT).show();
                    final BackgroundWork backgroundWork=new BackgroundWork(getContext());
                    backgroundWork.execute("route_sync");
                    backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
                        @Override
                        public void OnTaskFihishedEvent(String Result) {
//                        textView.setText(Result);
                            try {
                                JSONArray jsonArray = new JSONArray(Result);
                                dbHandler.removeroute();
                                for (int i=0;i<jsonArray.length();i++)
                                {
                                    JSONObject jsonObject=jsonArray.getJSONObject(i);
                                    dbHandler.addroute(Integer.valueOf(jsonObject.getString("RouteId")),jsonObject.getString("RouteName"),jsonObject.getString("RouteDescription"));
                                }
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
//                        dbHandler.displayroute();
                        }
                    });
                }
                else
                    Toast.makeText(getContext(), "No Internet Connection", Toast.LENGTH_SHORT).show();

            }
        });

        Log.d(TAG,"Adding Spinner");
        spinner = (Spinner) view.findViewById(R.id.spinner2);
        String[] routes = dbHandler.displayroute();
        ArrayAdapter<String> adapter= new ArrayAdapter<String>(this.getActivity(), R.layout.support_simple_spinner_dropdown_item,routes);
        spinner.setAdapter(adapter);
        final TextView textView= (TextView) view.findViewById(R.id.textView47);

        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String routename=spinner.getSelectedItem().toString();
                String routedesc="";
                routedesc=dbHandler.getroutedesc(routename);
                textView.setText(routedesc);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                textView.setText("Nothing Selected");
            }
        });


        return view;
    }

    public void routesyncing(){

    }

}
