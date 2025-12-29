<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="{{ asset('images/Unsera.png') }}" type="image/png">
    <title>@yield('title', 'SPK Weighted Product')</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0; background-color: #f4f7f6; color: #333; }
        .navbar { background-color: #2c3e50; color: #fff; padding: 1rem 2rem; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        .navbar a { color: #fff; text-decoration: none; padding: 0.5rem 1rem; border-radius: 4px; transition: background-color 0.3s; }
        .navbar a:hover, .navbar a.active { background-color: #34495e; }
        .navbar .brand { font-size: 1.5rem; font-weight: bold; }
        .container { background-color: #fff; margin: 2rem; padding: 2rem; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        h1, h2 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 10px; }
        table { width: 100%; border-collapse: collapse; margin-bottom: 2rem; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        th, td { padding: 12px 15px; border: 1px solid #ddd; text-align: left; }
        thead { background-color: #3498db; color: #fff; }
        tbody tr:nth-child(even) { background-color: #ecf0f1; }
        tbody tr:hover { background-color: #dbe4e8; }
        .badge { display: inline-block; padding: 4px 8px; border-radius: 4px; font-size: 0.9em; color: white; }
        .badge.benefit { background-color: #27ae60; }
        .badge.cost { background-color: #c0392b; }
        .rank-1 { font-weight: bold; color: #e67e22; }
        .btn { display: inline-block; padding: 10px 15px; background-color: #3498db; color: #fff; border: none; border-radius: 4px; text-decoration: none; cursor: pointer; transition: background-color 0.3s; }
        .btn:hover { background-color: #2980b9; }
        .btn-danger { background-color: #e74c3c; }
        .btn-danger:hover { background-color: #c0392b; }
        .btn-sm { padding: 5px 10px; font-size: 0.9em; }
        .action-links a { margin-right: 5px; }
        .form-group { margin-bottom: 1rem; }
        .form-group label { display: block; margin-bottom: 0.5rem; font-weight: bold; }
        .form-group input, .form-group select { width: 100%; padding: 10px; border-radius: 4px; border: 1px solid #ddd; box-sizing: border-box; }
        .alert { padding: 1rem; margin-bottom: 1rem; border-radius: 4px; }
        .alert-success { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
    </style>
</head>
<body>
    <nav class="navbar">
        <a href="{{ url('/') }}" class="brand">SPK WP</a>
        <div>
            <a href="{{ route('dashboard') }}" class="{{ request()->routeIs('dashboard') ? 'active' : '' }}">Dashboard</a>
            <a href="{{ route('spk.results') }}" class="{{ request()->routeIs('spk.results') ? 'active' : '' }}">Hasil SPK</a>
            <a href="{{ route('penilaian.index') }}" class="{{ request()->routeIs('penilaian.*') ? 'active' : '' }}">Input Nilai</a>
            <a href="{{ route('kriteria.index') }}" class="{{ request()->routeIs('kriteria.*') ? 'active' : '' }}">Data Kriteria</a>
            <a href="{{ route('alternatif.index') }}" class="{{ request()->routeIs('alternatif.*') ? 'active' : '' }}">Data Alternatif</a>
        </div>
    </nav>

    <main class="container">
        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        @yield('content')
    </main>
</body>
</html>
