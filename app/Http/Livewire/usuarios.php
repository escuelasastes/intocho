<?php

namespace App\Http\Livewire;

use App\Models\usuario;
use Illuminate\Support\Facades\DB;
use Livewire\Component;
use Illuminate\Http\Request;

class usuarios extends Component
{
    public $id_usuario, $nom,  $ap, $am, $especialidad, $usuario;
    public $isOpen = 0;

    public function render()
    {
        $this->usuario = usuario::all();
        return view('livewire.usuarios.usuario');
    }
    public function create(){
        $this->resetInputFields();
        $this->openModal();
    }
    public function openModal(){
        $this->isOpen = true;
    }
    public function closeModal(){
        $this->isOpen = false;
    }
    public function resetInputFields(){
        $this->nom = "";
        $this->ap = "";
        $this->am = "";
        $this->especialidad = "";
       
    }
    public function store(Request $request){
        $this->validate([
            'nom' => 'required',
            'ap' => 'required',
            'am' => 'required',
            'especialidad' => 'required'
        ]);  
       
        usuario::updateOrCreate(['id' => $this->id],[
            'nom' => $this->nom,
            'ap' => $this->ap,
            'am' => $this->am,
            'especialidad' => $this->especialidad       
        ]);   
         
        session()->flash('message', 
        $this->id ? 'usuario actualizado.' : 'usuario agragado con exito.');

        $this->closeModal();
        $this->resetInputFields();

    }
    public function edit($id){
        $usuario = usuario::findOrFail($id);
        $this->id=$id;
        $this->nom = $usuario->nom;
        $this->ap = $usuario->ap;
        $this->am = $usuario->am;
        $this->especialidad = $usuario->especialidad;
        $this->openModal();        
    }

    public function delete($id){
        usuario::find($id)->delete();
        session()->flash('message', 'usuario eliminado.');
    }    
}
