@extends('layouts.app')

@section('title', 'Edit Kriteria')

@section('content')
    <h1>Edit Kriteria</h1>

    <form action="{{ route('kriteria.update', $kriteria) }}" method="POST">
        @method('PUT')
        @include('kriteria._form', ['tombol' => 'Update'])
    </form>
@endsection
