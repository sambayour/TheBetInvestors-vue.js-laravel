<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Requests\PushRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use GuzzleHttp\Client;



class PushController extends Controller
{
    //
    public function index()
    {

    }

    public function pushalert(PushRequest $request)
    {

        $client = new Client();
    $res = $client->request('POST', 'https://us-central1-nafc-9ad44.cloudfunctions.net/api/notification?token=GdtYWlsLmNvbSIsImlkIjoiNWRmNDA4ZGIwNTE4ZDUyNjk4MjllNWU1IiwibmFtZSI6IldJU0RPTSBFS0VIIiwiYWNjb3VudFR5cGUiOiJERUZBVUxUIiwiZXhwIjoxNTgyOTY2MTIzLCJpYXQiOjE1NzgzMDA1MjN', [
        'data' => [
            $request->all()
        ]
    ]);

            $result= $res->getBody();
            dd($result);

        // $redirectUrl = 'https://us-central1-nafc-9ad44.cloudfunctions.net/api/notification?token=GdtYWlsLmNvbSIsImlkIjoiNWRmNDA4ZGIwNTE4ZDUyNjk4MjllNWU1IiwibmFtZSI6IldJU0RPTSBFS0VIIiwiYWNjb3VudFR5cGUiOiJERUZBVUxUIiwiZXhwIjoxNTgyOTY2MTIzLCJpYXQiOjE1NzgzMDA1MjN';
        // return Redirect::away($redirectUrl)->with([$request->all()]);
        // return redirect::away('https://www.google.com')->json($request->all());
            // return redirect('https://us-central1-nafc-9ad44.cloudfunctions.net/api/notification?token=GdtYWlsLmNvbSIsImlkIjoiNWRmNDA4ZGIwNTE4ZDUyNjk4MjllNWU1IiwibmFtZSI6IldJU0RPTSBFS0VIIiwiYWNjb3VudFR5cGUiOiJERUZBVUxUIiwiZXhwIjoxNTgyOTY2MTIzLCJpYXQiOjE1NzgzMDA1MjN/'.$request->title);

    }
    public function store($request)
    {
      
        echo $request;
 
    }
}
