<?php

namespace App\Http\Controllers\Dashboard;

use App\ContactMessage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactMessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $messages = ContactMessage::paginate(10);
        //return ($messages);
        return view('dashboard.contact.index',compact('messages'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(ContactMessage $message)
    {

        $message->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->back();
    }
}
