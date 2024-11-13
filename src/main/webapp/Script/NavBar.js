const menu  = document.querySelector(".tipi-menu")

function openMenu()
{
    menu.classList.add("aperto")
}

document.onclick = function (div)
{
    if(div.target.id !== "tipi-menu" && div.target.id !== "tipi-menu-object" && div.target.id !== "tipi-menu-list" && div.target.id !== "menu")
        menu.classList.remove("aperto")
}