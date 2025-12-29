<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreKriteriaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'nama_kriteria' => ['required', 'string', 'max:255', 'unique:kriteria,nama_kriteria'],
            'atribut' => ['required', Rule::in(['benefit', 'cost'])],
            'bobot' => ['required', 'numeric', 'min:0'],
        ];
    }
}
