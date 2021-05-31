<?php

namespace App\Http\Livewire;
use App\Models\usuario;
use Livewire\Component;

class usuarios extends Component
{
    public $name,  $ap, $am, $especialidad, $usuarios;
    public $isOpen = 0;
    public function render()
    {
        $this->usuario = usuario::all();
        return view('livewire.usuario.usuario');
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
        $this->name = '';
        $this->ap = '';
        $this->am = '';
        $this->especialidad = '';
       
    }
    public function store(Request $request){
        $this->validate([
            'name' => 'required',
            'ap' => 'required',
            'am' => 'required',
            'especialidad' => 'required',
            
        ]);  
       
        Ally::updateOrCreate(['id' => $this->usuario_id],[
            'name' => $this->name,
            'ap' => $this->ap,
            'am' => $this->am,
            'especialidad' => $this->especialidad,          
        ]);   
         
        session()->flash('message', 
        $this->usuario_id ? 'usuario actualizado.' : 'usuario agragado con exito.');

    $this->closeModal();
    $this->resetInputFields();


    }
    public function edit($id){
        $usuario = usuario::findOrFail($id);
        $this->usuario_id = $id;
        $this->name = $usuario->name;
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
