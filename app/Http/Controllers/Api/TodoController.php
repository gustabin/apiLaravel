<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Todo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TodoController extends Controller
{

    public function index(string $user_id)
    {
        $todos = Todo::where('user_id', $user_id)->get();
        // $todos = Todo::all();
        return $todos;
    }

    public function store(Request $request, $user_id)
    {
        $todo = new Todo();
        $todo->title = $request->title;
        $todo->description = $request->description;
        $todo->due_date = $request->due_date;
        $todo->completed = $request->completed;
        $todo->user_id = $user_id;

        $todo->save();
    }

    public function show(string $id)
    {
        $todo = Todo::find($id);
        return $todo;
    }

    public function update(Request $request, string $id)
    {
        $todo = Todo::findOrFail($request->id);
        $todo->title = $request->title;
        $todo->description = $request->description;
        $todo->due_date = $request->due_date;
        $todo->completed = $request->completed;

        $todo->save();
        return $todo;
    }

    public function destroy(string $id)
    {
        $todo = Todo::destroy($id);
        return $todo;
    }
}
