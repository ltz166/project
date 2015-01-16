avalon.define('todos', function(vm){
	vm.txt = '';
	vm.todolist = [];
	vm.add = function(e){
		e.preventDefault();
		!!vm.txt && vm.todolist.push(vm.txt);
		vm.txt = '';
	}
});