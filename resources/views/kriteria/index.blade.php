@extends('layouts.app')

@section('title', 'Data Kriteria')

@section('content')
    <div style="display: flex; justify-content: space-between; align-items: center;">
        <h1>Data Kriteria</h1>
        <a href="{{ route('kriteria.create') }}" class="btn">Tambah Kriteria</a>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama Kriteria</th>
                <th>Atribut</th>
                <th>Bobot</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($kriterias as $kriteria)
                <tr>
                    <td>{{ $kriteria->id }}</td>
                    <td>{{ $kriteria->nama_kriteria }}</td>
                    <td><span class="badge {{ $kriteria->atribut }}">{{ ucfirst($kriteria->atribut) }}</span></td>
                    <td>{{ $kriteria->bobot }}</td>
                    <td class="action-links">
                        <a href="{{ route('kriteria.edit', $kriteria) }}" class="btn btn-sm">Edit</a>
                        <form action="{{ route('kriteria.destroy', $kriteria) }}" method="POST" style="display: inline-block;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus kriteria ini?')">Hapus</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="5">Tidak ada data kriteria.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
@endsection
