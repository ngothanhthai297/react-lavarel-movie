<?php

namespace App\Http\Controllers;

use App\Favorite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FavoriteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(Favorite::all(), 201);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'user_id' => 'required|integer',
            'movie_id' => 'required|integer',
        ]);
        if ($validate->fails()) {
            return response()->json([
                'message' => 'Created favorite Error! Please Try Again'
            ], 400);
        }
        $favorite = new Favorite([
            'user_id' => $request->user_id,
            'movie_id' => $request->movie_id,
        ]);
        $favorite->save();
        return response()->json([
            'message' => 'Successfully created favorite!'
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $favorite = Favorite::findOrFail($id);
        return response()->json([
            'data' => $favorite,
            'status' => 200
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $favorite = Favorite::findOrFail($id);
        $validate = Validator::make($request->all(), [
            'user_id' => 'required|integer',
            'movie_id' => 'required|integer',
        ]);
        if ($validate->fails()) {
            return response()->json([
                'message' => 'Created favorite Error! Please Try Again'
            ], 400);
        }
        $favorite->update($request->all());
        return response()->json([
            'message' => 'Successfully update favorite!'
        ], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $favorite = Favorite::findOrFail($id);
        $favorite->delete();
        return response()->json(['message' => 'Successfully delete favorite!', 'status' => 200], 200);
    }
}
