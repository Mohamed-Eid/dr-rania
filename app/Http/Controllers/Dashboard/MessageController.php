<?php

namespace App\Http\Controllers\Dashboard;

use App\Message;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $messages = Message::where('type','general')->paginate(10);
        //return ($messages);
        return view('dashboard.contact.index',compact('messages'));
    }

    public function center_index()
    {
        $messages = Message::where('type','center')->paginate(10);
        //return ($messages);
        return view('dashboard.contact.index',compact('messages'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Message $message)
    {

        $message->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->back();
    }
}
