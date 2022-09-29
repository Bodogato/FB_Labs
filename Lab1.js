function Singleton(arg){
    let list=[arg];
    return list;
}
console.log(Singleton("Yeppiiii"));

function Null(list){
        return (list.length===0) ? true : false
}
console.log(Null([]));

function snoc(list, elem){
    list.push(elem);
    return list;
}
console.log(snoc(["I", "saw", "Red"], "vented"));

function length(list){
    let i=0;
    for(let elem of list){
        i++;
    }
    return i;
}
console.log(length(["Junko", "is", "crying", "among", 12]))