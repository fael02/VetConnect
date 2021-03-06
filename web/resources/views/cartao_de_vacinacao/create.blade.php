@extends('layout_vet')

@section('content')

<!-- Para inclusão do calendário -->
<link href="/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Inserção do Cartão de Vacina</h6>
    </div>
<div class="card-body">
<div class="row"">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Inserindo um novo cartão de vacina: </h2>
        </div>
    </div>
</div>

@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Ops!</strong> Houve alguns problemas com os dados inseridos.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form action="{{ route('vet.cartao_de_vacinacao.store') }}" method="POST" class="container was-validated" novalidate="" enctype="multipart/form-data">
    @csrf

    <div class="row">

        <div class="form-row col-xs-12 col-sm-12 col-md-12">
            <div class="form-group col-md-6">
                <strong>Data da Vacina:</strong>
                <input type="text" name="data" class="form-control date wd is-valid" placeholder="dd/mm/aaaa" onkeypress="$(this).mask('00/00/0000');"  required>
                <script type="text/javascript">
                $('.date').datepicker({
                    format: 'dd/mm/aaaa',
                    numberOfMonths: 1,
                    dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado'],
                    dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'],
                    dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
                    monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Desembro'],
                    monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
                })
                </script>
            </div>
            <div class="form-group col-md-6">
                <strong> Status: </strong>
                <select name="status" class="custom-select" required>
                    <option value=""> ... </option>
                    <option> Em andamento </option>
                    <option> Pendente </option>
                    <option> Concluída </option>
                </select>
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Descrição:</strong>
                <textarea class="form-control" style="height:45px" name="descricao" placeholder="Insira a descrição"></textarea>
            </div>
        </div>

        <div class="form-row col-xs-12 col-sm-12 col-md-12">
            <div class="form-group col-md-6">
                <strong>Vacina:</strong>
                <select  name="vacina_id" class="form-control is-valid" required>
                    <option>...</option>
                    @foreach($vacinas as $vacina)
                        <option value="{{$vacina->id}}">{{"ID: " .$vacina->id. " | Nome: " .$vacina->nome}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group col-md-6">
                <strong>Animal:</strong>
                <select  name="animal_id" class="form-control is-valid" required>
                    <option>...</option>
                    @foreach($animais as $animal)
                        <option value="{{$animal->id}}">{{$animal->nome. " | Dono: " .$animal->cliente->nome}}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <a class="btn btn-primary" href="{{ route('vet.cartao_de_vacinacao.index') }}"> Voltar</a>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
        </div>
    </div>

</form>
@endsection
