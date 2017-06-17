package com.vijayneetigroup.root.jar;


import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


/**
 * A simple {@link Fragment} subclass.
 */
public class SyncData extends Fragment {


    public SyncData() {
        // Required empty public constructor
    }

    public boolean isNetworkAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        final View view= inflater.inflate(R.layout.fragment_sync_data, container, false);
        ProgressBar progressBar2= (ProgressBar) view.findViewById(R.id.progressBar2);
        ProgressBar progressBar3= (ProgressBar) view.findViewById(R.id.progressBar3);
        ProgressBar progressBar4= (ProgressBar) view.findViewById(R.id.progressBar4);
        TextView textView25 = (TextView) view.findViewById(R.id.textView25);
        TextView textView26 = (TextView) view.findViewById(R.id.textView26);
        TextView textView27 = (TextView) view.findViewById(R.id.textView27);
        TextView textView= (TextView) view.findViewById(R.id.textView24);
        textView25.setVisibility(View.INVISIBLE);
        textView26.setVisibility(View.INVISIBLE);
        textView27.setVisibility(View.INVISIBLE);
        Boolean chkcomplete=true;
        if (chkcomplete)
        {
            textView.setText("Completed");
            textView25.setVisibility(View.VISIBLE);
            textView26.setVisibility(View.VISIBLE);
            textView27.setVisibility(View.VISIBLE);
            progressBar2.setVisibility(View.INVISIBLE);
            progressBar3.setVisibility(View.INVISIBLE);
            progressBar4.setVisibility(View.INVISIBLE);
        }

        Button button = (Button) view.findViewById(R.id.button3);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (isNetworkAvailable())
                {
                    final BackgroundWork backgroundWork=new BackgroundWork(getContext());
                    backgroundWork.execute("route_sync");
                    final MyDBHandler dbHandler = new MyDBHandler(view.getContext(), null, null, 1);
                    backgroundWork.setOnTaskFinishedEvent(new BackgroundWork.OnTaskExecutionFinished() {
                        @Override
                        public void OnTaskFihishedEvent(String Result) {
//                        textView.setText(Result);
                            try {
                                JSONArray jsonArray = new JSONArray(Result);
                                dbHandler.removeroute();
                                if (jsonArray!=null)
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
//                    Toast.makeText(view.getContext(), "Customer Sync in Progress", Toast.LENGTH_SHORT).show();
                    dbHandler.synccustomer(view.getContext());
                    dbHandler.syncentries(view.getContext());
                }
                else
                    Toast.makeText(getContext(), "No Internet Connection ", Toast.LENGTH_SHORT).show();
            }
        });

        button.performClick();

        return view;
    }

}
