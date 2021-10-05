import Foundation

//// MARK - Dictionaries
//print("Dictionaries\n")
//// Crear un diccionario sin valores
//var emptyDict : [String : String] = [:]
//
//// Crear un diccionario con valores
//var scores: [String: Int] = ["Erick": 9, "Mark": 12, "Alex": 10]
//
//// Agregar una nueva entrada al diccionario
//scores["Pablo"] = 0
//// ["Eric": 9, "Mark": 12, "Alex": 10, Pablo:0]
//
//// Leer una entrada del diccionario
//print(scores["Pablo"])
//// 0
//
//// Actualizar un valor del diccionario
//scores["Pablo"] = 4
//print(scores["Pablo"])
//
//// Iterar sobre llaves de un diccionario
//let jugadores = ["Erick", "Mark", "Alex", "Miguel", "Pablo"]
//
//for jugador in jugadores {
//	if let score = scores[jugador] {
//		print("Score de \(jugador) es \(score)")
//	} else {
//		print("No encontrado \(jugador)")
//	}
//}
//
//// Iterar sobre el contenido de un diccionario
//
//for (jugador, score) in scores {
//	print("\(jugador) tiene \(score) puntos")
//}
//
//// Buscar el indice de un contenido
//let indiceGanador = scores.firstIndex(where: {$0.value >= 10})
//if let ganador = indiceGanador {
//	print("El ganador es \(scores[ganador].key)")
//}
//
//
//
//// MARK - Queue
//
//// Implementacion de Queue usando double stack
//// Utiliza 2 stacks cada vez que entra un dato, lo hace mtiendolo
//// al de la derecha, si saca un dato, metet todos al del lado derecho,
//// al reves.
//// Haciendo sus operaciones de enqueue y dequeue de orden constante O(1)
//// Y su espacio en memoria de O(n)
//
//
//
//print("\nStacks\n")
//var stack: Stack = [1.0, 2.0, 3.0, 4.0]
//print(stack)
//stack.pop()
//print(stack)
//
//
//print("\nQueues\n")
//var queue = QueueStack<String>()
//queue.enqueue("Ray")
//queue.enqueue("Brian")
//queue.enqueue("Eric")
//queue.enqueue("Alex")
//queue.dequeue()
//print(queue)
//print(queue.peek)
//
