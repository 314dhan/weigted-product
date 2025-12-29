@extends('layouts.app')

@section('title', 'Edit Alternatif')

@section('content')
    <h1>Edit Alternatif</h1>

    <form action="{{ route('alternatif.update', $alternatif) }}" method="POST">
        @method('PUT')
        @include('alternatif._form', ['tombol' => 'Update'])
    </form>
@endsection
