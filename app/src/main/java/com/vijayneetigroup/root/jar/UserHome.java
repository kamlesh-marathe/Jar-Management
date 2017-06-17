package com.vijayneetigroup.root.jar;

import android.support.v4.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class UserHome extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {

    Boolean isfabopen=false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_home);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        final FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        final FloatingActionButton fab_add_cust = (FloatingActionButton) findViewById(R.id.add_customer);
        final FloatingActionButton fab_add_entry = (FloatingActionButton) findViewById(R.id.make_entry);
        final FloatingActionButton fab_add_route = (FloatingActionButton) findViewById(R.id.add_route);
        final Animation fab_open,fab_close,fab_rotatecl,fab_rotateanticl;
        fab_open= AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fab_open);
        fab_close = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fab_close);
        fab_rotatecl= AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_clockwise);
        fab_rotateanticl = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_anticlockwise);


        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

//                AddCustomer addCustomer=new AddCustomer();
//                FragmentManager fragmentManager=getSupportFragmentManager();
//                fragmentManager.beginTransaction().replace(R.id.fragment_replacer,addCustomer,addCustomer.getTag()).commit();

                if (!isfabopen)
                {
                    fab_add_cust.startAnimation(fab_open);
                    fab_add_route.startAnimation(fab_open);
                    fab_add_entry.startAnimation(fab_open);
                    fab.startAnimation(fab_rotatecl);
                    fab_add_cust.setClickable(true);
                    fab_add_route.setClickable(true);
                    fab_add_entry.setClickable(true);
                    isfabopen=true;
                }
                else
                {
                    fab_add_cust.startAnimation(fab_close);
                    fab_add_route.startAnimation(fab_close);
                    fab_add_entry.startAnimation(fab_close);
                    fab.startAnimation(fab_rotateanticl);
                    fab_add_cust.setClickable(false);
                    fab_add_route.setClickable(false);
                    fab_add_entry.setClickable(false);
                    isfabopen=false;
                }
            }
        });

        fab_add_cust.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                Toast.makeText(UserHome.this, "Add Customer Fab", Toast.LENGTH_SHORT).show();
                fab.performClick();
                AddCustomer addCustomer=new AddCustomer();
                FragmentManager fragmentManager=getSupportFragmentManager();
                fragmentManager.beginTransaction().replace(R.id.fragment_replacer,addCustomer,addCustomer.getTag()).commit();
            }
        });

        fab_add_entry.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fab.performClick();
                MakeEntry makeEntry=new MakeEntry();
                FragmentManager fragmentManager=getSupportFragmentManager();
                fragmentManager.beginTransaction().replace(R.id.fragment_replacer,makeEntry,makeEntry.getTag()).commit();
//                Toast.makeText(UserHome.this, "Add Entry Fab", Toast.LENGTH_SHORT).show();
            }
        });

        fab_add_route.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                Toast.makeText(UserHome.this, "Add Route Fab", Toast.LENGTH_SHORT).show();
                fab.performClick();
                Tools route=new Tools();
                FragmentManager fragmentManager=getSupportFragmentManager();
                fragmentManager.beginTransaction().replace(R.id.fragment_replacer,route,route.getTag()).commit();

            }
        });
        
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();

        NavigationView navigationView = (NavigationView) findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);

        Front front = new Front();
        FragmentManager fragmentManager=getSupportFragmentManager();
        fragmentManager.beginTransaction().replace(R.id.fragment_replacer,front,front.getTag()).commit();

    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.user_home, menu);
        return true;
    }

    private MyDBHandler dbHandler;

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            Toast.makeText(this, "Nothing to show in Settings", Toast.LENGTH_SHORT).show();
            return true;
        }
        else if (id == R.id.action_logout){
            Toast.makeText(this, "Loging Out", Toast.LENGTH_SHORT).show();
            dbHandler=new MyDBHandler(UserHome.this,null,null,1);
            Boolean aBoolean=dbHandler.removeuser();
            if (aBoolean)
            {
                Intent intent=new Intent(this,Login.class);
                startActivity(intent);
                finish();
            }
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        // Handle navigation view item clicks here.
        int id = item.getItemId();

        if (id == R.id.nav_camera) {
//            Toast.makeText(this, "Add Customer", Toast.LENGTH_SHORT).show();
            AddCustomer addCustomer=new AddCustomer();
            FragmentManager fragmentManager=getSupportFragmentManager();
            fragmentManager.beginTransaction().replace(R.id.fragment_replacer,addCustomer,addCustomer.getTag()).commit();

        } else if (id == R.id.nav_home) {
//            Toast.makeText(this, "Make Entry", Toast.LENGTH_SHORT).show();
            Front front=new Front();
            FragmentManager fragmentManager=getSupportFragmentManager();
            fragmentManager.beginTransaction().replace(R.id.fragment_replacer,front,front.getTag()).commit();
        } else if (id == R.id.nav_gallery) {
//            Toast.makeText(this, "Make Entry", Toast.LENGTH_SHORT).show();
            MakeEntry makeEntry = new MakeEntry();
            FragmentManager fragmentManager=getSupportFragmentManager();
            fragmentManager.beginTransaction().replace(R.id.fragment_replacer,makeEntry,makeEntry.getTag()).commit();
        } else if (id == R.id.nav_manage) {
//            Toast.makeText(this, "Tools", Toast.LENGTH_SHORT).show();
            Tools tools=new Tools();
            FragmentManager fragmentManager=getSupportFragmentManager();
            fragmentManager.beginTransaction().replace(R.id.fragment_replacer,tools,tools.getTag()).commit();
        } else if (id == R.id.nav_share) {
//            Toast.makeText(this, "Sync", Toast.LENGTH_SHORT).show();
            SyncData syncData=new SyncData();
            FragmentManager fragmentManager=getSupportFragmentManager();
            fragmentManager.beginTransaction().replace(R.id.fragment_replacer,syncData,syncData.getTag()).commit();

        } else if (id == R.id.nav_send) {
//            Toast.makeText(this, "Support", Toast.LENGTH_SHORT).show();
            Help help=new Help();
            FragmentManager fragmentManager=getSupportFragmentManager();
            fragmentManager.beginTransaction().replace(R.id.fragment_replacer,help,help.getTag()).commit();
        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }


}
