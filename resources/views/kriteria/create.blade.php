@extends('layouts.app')

@section('title', 'Tambah Kriteria')

@section('content')
    <h1>Tambah Kriteria Baru</h1>

    <form action="{{ route('kriteria.store') }}" method="POST">
        @include('kriteria._form', ['tombol' => 'Tambah'])
    </form>
@endsection
