﻿facts prepos_score language=Russian
{
 arity=2
 return=integer
}


// -------------------------------------------
// Оборот обладания очень часто формируется с
// предложным паттерном "У + обладатель"

// корабля у меня больше нет.
//         ^^^^^^        ^^^
fact prepos_score
{
 if context { частица:нет{} предлог:у{} }
  then return 2
}

fact prepos_score
{
 if context { частица:нету{} предлог:у{} }
  then return 2
}


// друзья смотрели ему вслед.
//                 ^^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:смотреть{} послелог:вслед{} }
  then return 2
}

// бросив взгляд ей вслед
//               ^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:бросить{} послелог:вслед{} }
  then return 2
}

// трое муравьев бросились нам навстречу.
//               ^^^^^^^^^^^^^^^^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:броситься{} послелог:навстречу{} }
  then return 2
}

// Николай двинулся ей навстречу.
//         ^^^^^^^^    ^^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:двинуться{} послелог:навстречу{} }
  then return 2
}

// берег постепенно сам шел нам навстречу.
//                      ^^^^^^^^^^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:идти{} послелог:навстречу{} }
  then return 2
}

// лишь один человек вышел им навстречу.
//                   ^^^^^^^^^^^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:выйти{} послелог:навстречу{} }
  then return 2
}

// целый отряд бегом поднимался им навстречу.
//                   ^^^^^^^^^^^^^^^^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:подниматься{} послелог:навстречу{} }
  then return 2
}


// вовремя же боги послали ему навстречу этих людей!
//                 ^^^^^^^^^^^^^^^^^^^^^
fact prepos_score
{
 if context { rus_verbs:послать{} послелог:навстречу{} }
  then return 2
}

// США эвакуируют свое посольство из Йемена в связи с угрозой терактов
fact prepos_score
{
 if context { глагол:эвакуировать{ вид:соверш } предлог:из{} }
  then return 2
}

fact prepos_score
{
 if context { глагол:эвакуировать{ вид:несоверш } предлог:из{} }
  then return 2
}

// Я повернулась и пошла по направлению к Дауэру.
fact prepos_score
{
 if context { глагол:пойти{} предлог:по направлению к{} }
  then return 2
}


// -------------------------------------------------

#define VerbPrep( v, prep, s ) \
#begin
fact prepos_score
{
 if context { rus_verbs:v{} предлог:prep{} }
  then return s
}
#end

VerbPrep(гулять,вдоль,2) // Гуляли вдоль моря.
VerbPrep(лететь,вдоль,2) // Летели вдоль побережья.
VerbPrep(ехать,вдоль,2) // Ехали вдоль берега.
VerbPrep(двигаться,вдоль,2) // Двигались вдоль реки.
VerbPrep(устать,от,4) // Устали авиаторы, особенно от этой изнуряющей жары.
VerbPrep(уставать,от,4)
VerbPrep(поразмыслить,над,4) // Тут было над чем поразмыслить.
VerbPrep(войти,внутрь,5) // Дети вошли внутрь дома
VerbPrep(упомянуть,о,2) // я упомянул о его смерти
VerbPrep(упоминать,о,2)
VerbPrep(донестись,до,2) // через открытые окна до него слабо доносилось пение
VerbPrep(доноситься,до,2)
VerbPrep(лечиться,от,2) // - Мне не от чего лечиться.
VerbPrep(вылечиться,от,2)
VerbPrep(вылечить,от,2)
VerbPrep(лечить,от,2)
VerbPrep(протягивать,к,2) // Оно протягивало свои длинные руки к молодому человеку,  стоявшему  на плоской вершине валуна.
VerbPrep(протянуть,к,2)
VerbPrep(спросить,об,2) // Он спросил нескольких из пляжников об их кажущейся всеобщей юности.
VerbPrep(низводить,до,2) // Некоторые властители низводили человеческие общины до полной деградации и абсолютного безразличия к санитарии.
VerbPrep(скрыться,с,2) // Виновник ДТП с места происшествия скрылся.
VerbPrep(скончаться,от,2) // Один пострадавший скончался через некоторое время от телесных повреждений.
VerbPrep(начаться,после,5) // Это началось после 15 октября 2004 года
VerbPrep(долететь,до,2) // Однако на следующий день до Москвы все же долетели.
VerbPrep(сыграть,против,2) // мы достойно сыграли против греков
VerbPrep(расспросить,о,2) // Нужно  было  в  прошлый  раз  досконально расспросить Вику о ее занятии  проституцией
VerbPrep(расспрашивать,о,2)
VerbPrep(отстать,от,2) // Я отстал от поезда.
VerbPrep(отставать,от,2)
VerbPrep(шептать,о,2) // губы его о чем-то беззвучно шептали.
VerbPrep(зависеть,от,2)
VerbPrep(принюхиваться,к,2)
VerbPrep(принюхаться,к,2)
VerbPrep(приноровиться,к,2)
VerbPrep(приноравливаться,к,2)
VerbPrep(забыть,об,2)
VerbPrep(забывать,об,2)
VerbPrep(сесть,на,5) // дракону на спину сел
VerbPrep(пойти,навстречу,5) // мы пошли навстречу гостям
VerbPrep(молчать,об,2) // ты же обещал об этом молчать!
VerbPrep(взяться,за,5)
VerbPrep(браться,за,5)
VerbPrep(транспортироваться,на,2)
VerbPrep(транспортироваться,в,2)
VerbPrep(начать,с,2) // Президент начал новый срок с выполнения своих обещаний
VerbPrep(намекать,на,2) // Эти удивительные новые выводы намекают на то, что Титан обладает очень странным и интересным ландшафтом.
VerbPrep(намекнуть,на,2)
VerbPrep(указать,на,2)
VerbPrep(указывать,на,2)
VerbPrep(пролить,на,2)
VerbPrep(проливать,на,2)
VerbPrep(найтись,для,5) // среди моих героев для него найдется местечко.
VerbPrep( взаимодействовать,с,1)
VerbPrep( провзаимодействовать,с,1)
VerbPrep( опустить, на, 2 )
VerbPrep( обращаться, вокруг, 2 )
VerbPrep( согласовать, с, 2 ) // время должно быть строго согласовано с условиями
VerbPrep( освободиться, от, 2 ) // она хотела освободиться от меня
VerbPrep( ехать, "следом за", 2 ) // следом за ним ехали другие
VerbPrep( застыть, на, 2 ) // Экономика страны фактически застыла на месте
VerbPrep( подойти, к, 2 ) // все подошли к ней
VerbPrep( дойти, до, 2 )
VerbPrep( выйти, из, 2 )
VerbPrep( надеяться, на, 2 )
VerbPrep( понадеяться, на, 2 )
VerbPrep( положиться, на, 2 )
VerbPrep( откреститься, от, 2 )
VerbPrep( открещиваться, от, 2 )
VerbPrep( отказаться, от, 2 )
VerbPrep( отказываться, от, 2 )
VerbPrep( соглашаться, с, 2 )
VerbPrep( согласиться, с, 2 )
VerbPrep( обратиться, к, 2 )
VerbPrep( обращаться, к, 2 )
VerbPrep( познакомить, с, 2 )
VerbPrep( познакомиться, с, 2 )
VerbPrep( знакомить, с, 2 )
VerbPrep( знакомиться, с, 2 )
VerbPrep( остаться, на, 2 )
VerbPrep( оставаться, на, 2 )
VerbPrep( напасть, на, 2 )
VerbPrep( нападать, на, 2 )
VerbPrep( отойти, от, 2 ) // все отошли от девушки
VerbPrep( отходить, от, 2 )
VerbPrep( отъехать, от, 2 )
VerbPrep( отъезжать, от, 2 )
VerbPrep( выпить, за, 2 ) // все стоя выпили за меня.
VerbPrep( стоять, относительно, 2 ) // относительно этой массы воздуха стоит.
VerbPrep( умереть, из, -10 ) // все из нас умрут
VerbPrep( ждать, впереди, -5 ) // впереди ее ждала долгая ночь
VerbPrep( присоединиться, к, 2 ) // кто еще хочет к нему присоединиться?
VerbPrep( добраться, до, 1 ) // мы можем до нее добраться?
VerbPrep( стоять, посередине, 2 ) // Посередине комнаты стоит большой письменный стол
VerbPrep( зацепиться, за, 2 ) // он прыгнул и зацепился за край ограды
VerbPrep( смеяться, над, 5 ) // Я  покажу  тебе, как надо мной смеяться!
VerbPrep(обойтись,без,2) // В этом деле без специалиста не обойтись.
VerbPrep(зачистить,от,2) // Правоохранительные органы зачистили центр Москвы от машин и людей
VerbPrep(начаться,с,2) // началось все со скуки
VerbPrep(присматривать,за,2)
VerbPrep(присматриваться,к,2)
VerbPrep(приглядываться,к,2)
VerbPrep(засматриваться,на,2)
VerbPrep(всматриваться,в,2)
VerbPrep(вглядываться,в,2)
VerbPrep(вцепиться,в,2)
VerbPrep(познакомиться,с,2)
VerbPrep(знакомиться,с,2)
VerbPrep(нацеливаться,на,1)
VerbPrep(нацелиться,на,1)
VerbPrep(упереться,в,1)
VerbPrep(идти,вдоль,5) // некоторое время шли вдоль нее

VerbPrep(дотронуться,до,2) // дотронуться до двери
VerbPrep(дотрагиваться,до,2) // дотрагиваться до лба
VerbPrep(прислониться,к,2) // прислониться к стене
VerbPrep(прислоняться,к,2) // прислоняться к ограде
VerbPrep(перелезть,через,2) // перелезть через забор
VerbPrep(перелезать,через,2) // перелезать через ограду
VerbPrep(взглянуть,на,2) // взглянуть на Машу
VerbPrep(глядеть,на,2) // глядеть на крону дерева
VerbPrep(взирать,на,2) // 
VerbPrep(наблюдать,за,2) // наблюдать за незнакомцем
VerbPrep(понаблюдать,за,2) // понаблюдать за течением воды
VerbPrep(разочароваться,в,2) // разочароваться в результатах
VerbPrep(разочаровываться,в,2) // разочаровываться в стажерах
VerbPrep(наскочить,на,2) // наскочить на пень
VerbPrep(выместить,на,2) // выместить гнев на подчиненных
VerbPrep(вымещать,на,2) // вымещать раздражение на домочадцах
VerbPrep(влиять,на,2) // ошибки всегда влияют на оценку
VerbPrep(повлиять,на,2) // помарки повлияли на оценку
VerbPrep(оттолкнуться,от,2) // оттолкнуться от берега
VerbPrep(отталкиваться,от,2) // отталкиваться от постулатов
VerbPrep(исходить,из,2) // исходить из имеющихся ресурсов
VerbPrep(извлечь,из,2) // извлечь из рюкзака
VerbPrep(извлекать,из,2) // извлекать из кармана
VerbPrep(присмотреться,к,2) // присмотреться к новичку
VerbPrep(приглядеться,к,2)
VerbPrep(присматриваться,к,2) // присматриваться к сопернице
VerbPrep(прощаться,с,2) // прощаться с институтом
VerbPrep(попрощаться,с,2) // попрощаться с бабушкой
VerbPrep(поздороваться,с,2) // поздороваться с дедушкой
VerbPrep(здороваться,с,2) // здороваться с учителем
VerbPrep(ухаживать,за,2) // ухаживать за стариками
VerbPrep(поухаживать,за,2) // поухаживать за девочкой
VerbPrep(уведомить,о,2) // уведомить о дополнительных расходах
VerbPrep(уведомлять,о,2) // уведомлять о прибытии
VerbPrep(плакать,от,2) // плакать от обиды
VerbPrep(заплакать,от,2) // заплакать от ужаса
VerbPrep(зарыдать,от,2) // зарыдать от страха
VerbPrep(рыдать,от,2) // рыдать от боли
VerbPrep(дожить,до,2) // дожить до глубокой старости
VerbPrep(переживать,о,2) // переживать о случившемся
VerbPrep(превратиться,в,2)
VerbPrep(превращаться,в,2)
VerbPrep(служить,для,2)
VerbPrep(предназначаться,для,2)
VerbPrep(додуматься,до,2)
//VerbPrep(додумываться,до,2)
VerbPrep(пододвинуться,к,2)
VerbPrep(пододвигаться,к,2)
VerbPrep(мечтать,о,2)
VerbPrep(помечтать,о,2)
VerbPrep(здороваться,с,2)
VerbPrep(поздороваться,с,2)
VerbPrep(сопоставить,с,2)
VerbPrep(сопоставлять,с,2)
VerbPrep(сравниться,с,2)
VerbPrep(сравниваться,с,2)
VerbPrep(вознестись,к,2)
VerbPrep(возноситься,к,2)
VerbPrep(спрятаться,под,2) // Дети спрятались от дождя под деревом.
VerbPrep(прятаться,под,2)
VerbPrep(драться,за,2)
VerbPrep(подраться,за,2)
VerbPrep(вытереть,с,2) // тот вытер пот со лба.
VerbPrep(вытирать,с,2)
VerbPrep(стоять,посреди,2) // Посреди комнаты стоит большой стол.
VerbPrep(встать,посреди,2)
VerbPrep(отрываться,от,2)
VerbPrep(оторваться,от,2)
VerbPrep(стоять,перед,2) // кто же стоит перед ней?
VerbPrep(стоять,позади,2)
VerbPrep(хотеть,от,2) // чего хочет девчонка от церкви?
VerbPrep(вырвать,из,2) // вырвать семью из сердца?
VerbPrep(вырывать,из,2)
VerbPrep(извлечь,из,2)
VerbPrep(извлекать,из,2)
VerbPrep(вытащить,из,2)
VerbPrep(вытаскивать,из,2)
VerbPrep(броситься,с,2) // они бросились на меня с лопатами
VerbPrep(бросаться,с,2)
VerbPrep(запирать,в,2) // запирать преступника в камере
VerbPrep(запереть,в,2)
VerbPrep(тащить,из,2) 
VerbPrep(вытащить,из,2) 
VerbPrep(держаться,вне,2) // зверек постарался держаться вне пределов моей досягаемости.
VerbPrep(выбуксировать,из,2) // выбуксировать танкер из порта
VerbPrep(закончить,на,2) // Мы закончили игру на самом интересном месте
VerbPrep(отвлечь,от,2)
VerbPrep(отвлекать,от,2)
VerbPrep(очистить,от,2) // надо полностью очистить один участок от всех живых тварей
VerbPrep(очищать,от,2)
VerbPrep(отстегнуть,от,2) // отстегнуть капюшон от куртки
VerbPrep(отстёгивать,от,2)
VerbPrep(склоняться,к,2)
VerbPrep(склониться,к,2)
VerbPrep(утопить,в,2) // утопить лодку в реке
VerbPrep(пробить,в,2) // пробить отверстие в стене
VerbPrep(связать,с,2) // связать катастрофу с действиями конкурентов
VerbPrep(связывать,с,2)
VerbPrep(скинуть,с,2) // скинуть снег с плеча
VerbPrep(скидывать,с,2)
VerbPrep(топить,в,2) // топить горе в вине
VerbPrep(войти,внутрь,2) // Василий вошел внутрь дома.
VerbPrep(внести,в,2) // Он внёс большой вклад в науку.
VerbPrep(вносить,в,2)
VerbPrep(упрекать,в,2) // упрекать начальника в малодушии
VerbPrep(упрекнуть,в,2)
VerbPrep(обвинить,в,3) // Южный Судан обвинил Судан во вторжении на свою территорию
VerbPrep(обвинять,в,2)
VerbPrep(считаться,с,2) // С чужим мнением надо считаться.
VerbPrep(сравнивать,с,2) // сравнивать перевод с оригиналом
VerbPrep(сравнить,с,2)
VerbPrep(разобраться,в,2) // Миша пробовал разобраться в условиях задачи
VerbPrep(происходить,с,2) // Странные события начали происходить с Колей
VerbPrep(отодвинуть,от,2) // Отодвиньте лестницу от стены.
VerbPrep(отодвигать,от,2)
VerbPrep(пододвинуть,к,2)
VerbPrep(пододвигать,к,2)
VerbPrep(собрать,в,2) // Соберите всех учеников во дворе.
VerbPrep(собирать,в,2)
VerbPrep(выбуксировывать,из,2) // выбуксировывать танкер из порта
VerbPrep(обойти,в,2) // Бразилия обошла Россию в рейтинге
VerbPrep(снять,с,2) // Снимите книги с верхней полки.
VerbPrep(беречь,от,2) // Берегите спички от влаги
VerbPrep(толкать,от,2) // Толкайте калитку от себя.
VerbPrep(толкать,к,2)
VerbPrep(толкнуть,к,2)
VerbPrep(разговаривать,с,2) // Она с ним давно не разговаривает.
VerbPrep(поговорить,с,2)
VerbPrep(взыскать,с,2) // Приставы взыскали долг с бедолаги
VerbPrep(взыскивать,с,2)
VerbPrep(воровать,у,2) // Мальчик воровал деньги у других учеников
VerbPrep(выбивать,из,2) // выбивать дурь из кого-то
VerbPrep(вывернуть,из,2) // вывернуть лампочку из патрона
VerbPrep(выворачивать,из,2)
VerbPrep(выткнуть,из,2) // выткнуть штепсель из розетки
VerbPrep(вывертывать,из,2) // вывертывать лампочку из патрона
VerbPrep(вывинчивать,из,2) // вывинчивать лампочки из патронов
VerbPrep(выволакивать,из,2) // выволакивать мусор из гаража
VerbPrep(выгружать,из,2) // выгружать картошку из багажника
VerbPrep(выгрузить,из,2) // выгрузить модуль из оперативной памяти
VerbPrep(выдворить,из,2) // выдворить нарушителя из страны
VerbPrep(выдворять,из,2) // выдворять нарушителя из страны
VerbPrep(выделить,из,2) // выделить активное вещество из сырья
VerbPrep(вытаскивать,из,2) // вытаскивать каштаны из огня
VerbPrep(вытесать,из,2) // вытесать бюст из гранита
VerbPrep(вывезти,из,2) // вывезти мусор из гаража
VerbPrep(предупредить,о,2) // Николай, лесник предупредил браконьеров о серьезных последствиях?
VerbPrep(остановить,около,2) // Мы остановили машину около вокзала.
VerbPrep(останавливаться,около,2) 
VerbPrep(пропустить,мимо,2)
VerbPrep(пропускать,мимо,2) // пропускать просьбу мимо ушей
VerbPrep(защитить,от,2) // Мы защитили Родину от врагов.
VerbPrep(защищать,от,2) // Они защищали крепость от врагов
VerbPrep(сблизить,с,1) // эта потеря только сблизила брата с сестрой
VerbPrep(сближать,с,1) 
VerbPrep(сближаться,с,1) 
VerbPrep(появляться,на,1) // Она появляется на сцене во втором действии.
VerbPrep(взять,у,1) // журналист, взявший интервью у певца
VerbPrep(брать,у,1) // журналист, берущий интервью у певца
VerbPrep(вывести,из,2) // Реаниматоры вывели пациента из состояния комы
VerbPrep(выводить,из,2) // Реаниматоры выводят пациента из состояния комы
VerbPrep(освободить,от,2) // освободить город от захватчиков
VerbPrep(хранить,в,1) // Некоторые люди предпочитают хранить деньги в банке
VerbPrep(стирать,с,1) // стирать пыль с мебели
VerbPrep(согнать,с,1) // согнать кошку  со стола
VerbPrep(свергать,с,1) // свергать царя с трона
VerbPrep(свергнуть,с,1) 
VerbPrep(сдувать,с,1) // сдувать пух с одуванчиков
VerbPrep(сличать,с,1) // сличать перевод с оригиналом
VerbPrep(сличить,с,1)
VerbPrep(сцеплять,с,1) // сцеплять карабин с обвязкой
VerbPrep(купить,для,1) // Руководство района обещало купить новые комбайны для нашего села
VerbPrep(ждать,от,1) // Мы не можем ждать милостей от природы.
VerbPrep(отнимать,у,1) // Нельзя отнимать кость у злой собаки
VerbPrep(отнять,у,1) // Отнять кость у собаки
VerbPrep(укорять,в,1) // укорять друга в забывчивости
VerbPrep(удалить,из,1) // удалить группу новостей из списка чтения
VerbPrep(узнавать,от,1) // узнавать новости от друзей
VerbPrep(утаить,от,1) // утаить правду от родителей
VerbPrep(сбивать,с,1) // сбивать сосульки с крыши
VerbPrep(разделить,между,1) // мы разделили запасы воды между детьми
VerbPrep(отвести,от,2) // Он отвёл глаза от книги и посмотрел в окно.
VerbPrep(оторвать,от,2) // Он оторвал пуговицу от пальто.
VerbPrep(сбрасывать,с,1) // Утром он сбрасывал снег с крыши.
VerbPrep(сбросить,с,1) 
VerbPrep(соединять,с,1) // соединять шпалы с рельсами при помощи костылей
VerbPrep(соединить,с,1) 
VerbPrep(пропасть,с,1) // пропасть с экрана
VerbPrep(распустить,"из-за",1) // Верховный суд Египта приказал распустить парламент из-за многочисленных нарушений.
VerbPrep(стучать,по,1) // Дождь начал стучать по крыше.
VerbPrep(сделать,без,1) // Антонио разрешил это сделать без покупки абонемента
VerbPrep(высадиться,для,1) // большой злой пират и его отчаянные помощники высадились на необитаемом острове для поиска зарытых сокровищ
VerbPrep(удержаться,от,1) // Он не мог удержаться от смеха.
VerbPrep(бегать,по,1) // Стали бегать по всем вагонам.
VerbPrep(вернуться,в,1) // Купив молока, Коля решил вернуться в коттедж
VerbPrep(забраться,под,1) // Кошка хотела забраться на диван под одеяло.
VerbPrep(выступать,из,2) // Река начала выступать из берегов.
VerbPrep(подать,в,2) // Автор подал своих героев в реалистических тонах.
VerbPrep(чахнуть,от,2) // цветок начал чахнуть от недостатка света
VerbPrep(оторваться,от,2) // Я не мог оторваться от книги.
VerbPrep(вытащить,из,2) // Мишка вытащил сковородку из печки.
VerbPrep(вытянуть,из,1) // Он вытянул пистолет из заднего кармана штанов.
VerbPrep(вынуть,из,1) // Он вынул письмо из кармана.
VerbPrep(выкинуть,из,1) // Выкиньте эту ерунду из головы.
VerbPrep(лепить,из,1) // он умело лепил человечков из глины
VerbPrep(выбить,из,1) // Она выбила пыль из ковров.
VerbPrep(выгнать,из,1) // Охрана выгнала хулигана из казино
VerbPrep(выбрать,из,1) // Учитель выбрал лучших спортсменов из числа учеников.
VerbPrep(купить,у,1) // Он купил цветы у старухи.
VerbPrep(удалять,с,1) // удалять пятна с одежды
VerbPrep(убирать,с,1) // убирать мусор c пола
VerbPrep(взять,с,1) // Возьмите эти деньги с собой.
VerbPrep(выжать,из,2) // Я ничего не мог из него выжать.
VerbPrep(выжимать,из,1)
VerbPrep(заплатить,за,1) // Омонимия форм для ЗАПЛАКАТЬ-ЗАПЛАТИТЬ.
VerbPrep(платить,за,1) // Я плачу за его квартиру
VerbPrep(защищать,от,1) // Эти деревья защищают дом от ветра.
VerbPrep(стоять,напротив,1) // Дерево стоит напротив дома.
VerbPrep(заявить,о,1) // Надо заявить в милицию о краже.
VerbPrep(погостить,у,1) // погостить после свадьбы у своих родителей
VerbPrep(выпустить,из,1) // Она выпустила птицу из клетки.
VerbPrep(отпустить,из,1) // Она отпустила птицу из клетки.
VerbPrep(соперничать,с,1)

// Он отозвался об этой книге с большой похвалой.
//    ^^^^^^^^^               ^
VerbPrep(отозваться,с,1) 

VerbPrep(отзываться,с,1) // Он отзывается об этой книге с большой похвалой.
VerbPrep(стать,для,1) // вечность для них стала делом случая.

// Поле отделяет рощу от пруда.
//      ^^^^^^^^      ^^
VerbPrep(отделять,от,1) 

// Язык - один из признаков, отличающих человека от животных.
//                           ^^^^^^^^^^          ^^
VerbPrep(отличать,от,2)

VerbPrep(освободить,от,1) // мы должны как можно скорее освободить его ото льда.

// мешать воду с мукой
// ^^^^^^      ^
VerbPrep(мешать,с,1) 


// понимаю ваше желание провести вечер вне дома.
//                      ^^^^^^^^       ^^^
VerbPrep(провести,вне,1)



// Возвращается муж из командировки.
// ^^^^^^^^^^^^     ^^
VerbPrep(возвращаться,из,1) 


// Автор воскрешает героя из небытия
//       ^^^^^^^^^^       ^^
VerbPrep(ВОСКРЕШАТЬ,из,1) 
VerbPrep(ВОСКРЕСАТЬ,из,1) 
VerbPrep(ВОСКРЕСНУТЬ,из,1) 
VerbPrep(ВОСКРЕСИТЬ,из,1) 

// давайте поздравим Антона с успехом!
//         ^^^^^^^^^        ^^^^^^^^^
VerbPrep(поздравить,с,1) 
VerbPrep(поздравлять,с,1) 

// меч вылетел у Дэвида из рук.
//     ^^^^^^^          ^^
VerbPrep(вылететь,из,1)
VerbPrep(вылетать,из,1)


// металл бессильно пытался ударить по камню.
//                          ^^^^^^^^^^
VerbPrep(ударить,по,1)
VerbPrep(ударять,по,1)
VerbPrep(стучать,по,1)
VerbPrep(стукнуть,по,1)
VerbPrep(долбануть,по,1)


// Андрей грозно потащил меч из ножен.
VerbPrep(потащить,из,1) 

// пистолет выпал у Андрея из руки.
//          ^^^^^          ^^
VerbPrep(выпасть,из,1)
VerbPrep(выпадать,из,1)
VerbPrep(вывалиться,из,1)
VerbPrep(вываливаться,из,1)

// старик надо мной смеется.
VerbPrep(смеяться,над,1)
VerbPrep(посмеяться,над,1)
VerbPrep(подшутить,над,1)
VerbPrep(подшучивать,над,1)



// Он долго стоял на площади посреди толпы.
//          ^^^^^            ^^^^^^^
VerbPrep(стоять,на,1)
VerbPrep(встать,на,1)



// Дело от этого не меняется.
//      ^^          ^^^^^^^^
VerbPrep(меняться,от,1)
VerbPrep(поменяться,от,1)
VerbPrep(измениться,от,1)
VerbPrep(изменяться,от,1)



// мы специально вывели этих животных для мяса.
//               ^^^^^^               ^^^
VerbPrep(вывести,для,1)


// стали защищаться от осколков
//       ^^^^^^^^^^^^^
VerbPrep(защищаться,от,1)
VerbPrep(защититься,от,1)

// проход от меня закрыли
//        ^^      ^^^^^^^
VerbPrep(закрыть,от,1)
VerbPrep(закрывать,от,1)

// тянет ветром от двери
// ^^^^^        ^^
VerbPrep(тянуть,от,1)



// куски от них остались
//       ^^     ^^^^^^^^
VerbPrep(остаться,от,1) 
VerbPrep(оставаться,от,1) 


// Аркаша отнял руки от ушей.
//        ^^^^^      ^^
VerbPrep(отнять,от,1) 
VerbPrep(отнимать,от,1) 


// удача от тебя отвернулась!
VerbPrep(отвернуться,от,2) 
VerbPrep(отворачиваться,от,2) 


// проще получить информацию от вас
//       ^^^^^^^^            ^^
VerbPrep(получить,от,1) 
VerbPrep(получать,от,1) 


// надеялись скрыть от него?
//           ^^^^^^^^^
VerbPrep(скрыть,от,1) 
VerbPrep(скрывать,от,1) 
VerbPrep(прятать,от,1) 
VerbPrep(спрятать,от,1) 


// проснулся от легкого шума
// ^^^^^^^^^^^^
VerbPrep(проснуться,от,1) 

// Этот доктор спас многих от смерти.
//             ^^^^        ^^
VerbPrep(спасти,от,1)
VerbPrep(спасать,от,1)

// Мы отделили новые книги от старых.
//    ^^^^^^^^             ^^
VerbPrep(отделить,от,1)
VerbPrep(отделять,от,1)




// папа забрал Риту из детского садика
//      ^^^^^^      ^^
VerbPrep(забрать,из,1)
VerbPrep(забирать,из,1)



// Он справлялся с делом со свойственным ему хладнокровием.
//    ^^^^^^^^^^         ^^
VerbPrep(справляться,с,1)
VerbPrep(справиться,с,1)
VerbPrep(совладать,с,1)


// почему ты решил от него избавиться?
//                 ^^      ^^^^^^^^^^
VerbPrep(избавиться,от,2)
VerbPrep(избавляться,от,2)
VerbPrep(избавить,от,2) // А  я  хотел раз и  навсегда избавить Александра Михайловича от любых  попыток шантажа,
VerbPrep(избавлять,от,2)

// Кто будет вести урок вместо заболевшего преподавателя?
//           ^^^^^      ^^^^^^
VerbPrep(вести,вместо,1)

// Диван в этой комнате не поместится.
//       ^                 ^^^^^^^^^^
VerbPrep(поместиться,в,1)

// Данный факт о многом говорит.
//             ^        ^^^^^^^
VerbPrep(говорить,о,1)





// распределять столы и табуретки между жильцами
// ^^^^^^^^^^^^                   ^^^^^
VerbPrep(распределять,между,1)
VerbPrep(распределить,между,1)

// Россия отозвала посла из Чехии
VerbPrep(отозвать,из,1)
VerbPrep(отзывать,из,1)


// мы ознакомили комиссию с результатами исследований
//    ^^^^^^^^^^          ^
VerbPrep(ознакомить,с,1)
VerbPrep(ознакамливать,с,1)
VerbPrep(ознакомиться,с,1)
VerbPrep(ознакамливаться,с,1)

// Мы обсудили этот вопрос с президентом
//    ^^^^^^^^             ^
VerbPrep(обсудить,с,1)
VerbPrep(обсуждать,с,1)


// он обратился к директору со своим предложением
//    ^^^^^^^^^             ^^
VerbPrep(обратиться,с,1)
VerbPrep(обращаться,с,1)



// лежать без сил в кровати
// ^^^^^^         ^
VerbPrep(лежать,в,1)

// Морковь лежала красными кучками среди чёрных разрытых грядок.
VerbPrep(лежать,среди,1)


// трубка лежала на столике прямо в прихожей
//        ^^^^^^            ^^^^^^^
VerbPrep(лежать,на,1)

// Лечь без сил в кровать
// ^^^^         ^
VerbPrep(лечь,в,1)


// гномы нашли меч среди обломков.
//       ^^^^^     ^^^^^
VerbPrep(найти,среди,1)
VerbPrep(обнаружить,среди,1)
VerbPrep(искать,среди,1)
VerbPrep(поискать,среди,1)

// Майкл махнул вытянутой рукой поверх голов.
//       ^^^^^^                 ^^^^^^
VerbPrep(махнуть,поверх,1)


// знакомить друга с женой
// ^^^^^^^^^       ^
VerbPrep(знакомить,с,1)
VerbPrep(знакомиться,с,1)
VerbPrep(познакомить,с,1)
VerbPrep(познакомиться,с,1)


// выдавить сок из апельсина
// ^^^^^^^^     ^^
VerbPrep(выдавить,из,1)
VerbPrep(выдавливать,из,1)


// Поэты воспевают героев в одах
//       ^^^^^^^^^        ^
VerbPrep(воспевать,в,1)
VerbPrep(воспеть,в,1)

// Она прожила год в деревне.
VerbPrep(прожить,в,1)
VerbPrep(проживать,в,1)

// спрятать книги под кроватью
VerbPrep(спрятать,под,1)
VerbPrep(прятать,под,1)

// кровь изо рта хлынула волной.
VerbPrep(хлынуть,из,1)




// они бросили чудище посреди пещеры.
//     ^^^^^^^        ^^^^^^^
VerbPrep(бросить,посреди,1)
VerbPrep(бросать,посреди,1)
VerbPrep(побросать,посреди,1)



// плач от этого только усилился.
//      ^^              ^^^^^^^^
VerbPrep(усилиться,от,1)
VerbPrep(усиливаться,от,1)

// тебе доводилось использовать силы магии против другого человека?
//                 ^^^^^^^^^^^^            ^^^^^^
VerbPrep(использовать,против,1)


// наперерез Сашке бросился Витька
// ^^^^^^^^^       ^^^^^^^^
VerbPrep(броситься,наперерез,1)


// Порыв ветра сбил Ваньку с ног
//             ^^^^        ^^^^^
VerbPrep(сбить,с,1)

// мать из их шерсти делала для всех нас одежду
//      ^^           ^^^^^^
VerbPrep(делать,из,1)

// из меня всегда хотели сделать священника
VerbPrep(сделать,из,2)


// она узнала бы этот запах среди миллиона других
//     ^^^^^^               ^^^^^
VerbPrep(узнать,среди,1)
VerbPrep(узнавать,среди,1)

// от удара у меня из глаз посыпались искры
//                 ^^      ^^^^^^^^^^
VerbPrep(сыпаться,из,1)
VerbPrep(посыпаться,из,1)


// Джейн с этим согласилась
//       ^      ^^^^^^^^^^^
VerbPrep(согласиться,с,1)
VerbPrep(соглашаться,с,1)

// То, что он согласится на это предложение, было несомненным
VerbPrep(согласиться,на,1)
VerbPrep(соглашаться,на,1)



// цепи с него спали
//      ^^^^^^^^^^^^
VerbPrep(спасть,с,1)
VerbPrep(спадать,с,1)

// шлем с него свалился
//      ^^^^^^^^^^^^^^^
VerbPrep(свалиться,с,1)
VerbPrep(сваливаться,с,1)



// вода с улиц исчезла
//      ^^^^^^^^^^^^^^
VerbPrep(исчезнуть,с,1)
VerbPrep(исчезать,с,1)

// человек с него слез
//         ^^^^^^^^^^^
VerbPrep(слезть,с,1)
VerbPrep(слезать,с,1)

VerbPrep(воссоединиться,с,1)
VerbPrep(воссоединяться,с,1)

VerbPrep(сосредоточиться,на,1)
VerbPrep(сосредотачиваться,на,1)

// ты уж помни об этом.
//       ^^^^^^^^
VerbPrep(помнить,об,1)
VerbPrep(помнить,о,1)


// Аргентина обвинила Великобританию в имперских амбициях
//           ^^^^^^^^                ^
VerbPrep(обвинить,в,1)
VerbPrep(обвинять,в,1)

// Он со мной плохо обращается.
//    ^^            ^^^^^^^^^^
VerbPrep(обращаться,с,1)


// он нарисовал ее портрет палкой на стене
//    ^^^^^^^^^                   ^^
VerbPrep(нарисовать,на,1)


// или вообще решили оставить планету для себя.
//                   ^^^^^^^^         ^^^
VerbPrep(оставить,для,1)
VerbPrep(оставлять,для,1)

// среди моих героев для него найдется местечко.
VerbPrep(найтись,для,1)


// потом они походили вокруг меня.
//           ^^^^^^^^^^^^^^^
VerbPrep(ходить,вокруг,1)
fact prepos_score
{
 if context { глагол:походить{ вид:соверш } предлог:вокруг{} }
  then return 1
}


// Устремить всё внимание на изучение природы
VerbPrep(устремить,на,1)
VerbPrep(направить,на,1)
VerbPrep(нацелить,на,1)
VerbPrep(нацелиться,на,1)
VerbPrep(настроиться,на,1)

VerbPrep(покоситься,на,1) // покосился на спелые помидоры
VerbPrep(висеть,над,2)
VerbPrep(остаться,от,2) // через несколько минут от него осталась только кучка пепла

VerbPrep(играть,против,2) // просто иногда это играет против нас
VerbPrep(повернуться,против,2) // иначе это оружие могло против него самого повернуться

VerbPrep(смириться,с,2) // с этим очень трудно смириться!
VerbPrep(мириться,с,2)

VerbPrep(волноваться,за,1) // мы уже начали за вас волноваться.
VerbPrep(поделиться,с,2) // Мы поделились своим опытом с товарищами

VerbPrep(войти,внутрь,2)
VerbPrep(воздерживаться,от,2)
VerbPrep(воздержаться,от,2)

VerbPrep(броситься,навстречу,2) // они бросились навстречу друг другу.
VerbPrep(расти,из,2) // Спустя несколько минут он вышел к одному из многих  деревьев,  росших из  самой   скалы.
VerbPrep(перенести,в,2) // Раненых в спальное помещение перенесли.

VerbPrep(лететь,над,2) // Над болотом лечу.
VerbPrep(пролететь,над,2)
VerbPrep(летать,над,2)

// В Думе против законопроекта выступили кадеты.
//        ^^^^^^               ^^^^^^^^^
VerbPrep(выступить,против,2)
VerbPrep(выступать,против,2)



// -------------------------------------------------

#define NounPrep( n, prep, s ) \
#begin
fact prepos_score
{
 if context { существительное:n{} предлог:prep{} }
  then return s
}
#end

NounPrep(подъем,по,2) // подъем по склону
NounPrep(переговоры,с,2) // Переговорам с Японией мешает и нерешенная проблема с южными Курильскими островами, которые Япония считает своей территорией.
NounPrep(переговоры,по,2) // Европейский союз готов присоединиться к украинско-российским переговорам по пересмотру цены на газ
NounPrep(переговоры,о,4) // США ведут переговоры с Афганистаном о продлении присутствия в кабульском регионе
NounPrep(нападение,на,2)
NounPrep(отъезд,из,2)
NounPrep(упрёк,в,2) // упрёк в равнодушии
NounPrep(уведомление,о,2) // уведомление о расходах
NounPrep(прощание,с,2) // прощание со школой
NounPrep(ухаживание,за,2) // ухаживание за больным
NounPrep(работа,над,5)// Приглашаем всех желающих принять участие в работе над статьями
NounPrep(защита,от,2) // но дайте мне хотя бы нож для защиты от дракона.
NounPrep(ухудшение,под,2) // ухудшение свойств под воздействием тепла
NounPrep(протест,против,2) // Вчера в столице состоялся митинг протеста против повышения цен.
NounPrep(увольнение,с,2) // К нарушителям применяются административные меры вплоть до увольнения с работы.
NounPrep(увольнение,из,2)
NounPrep(драка,за,2) // звуки драки за добычу становились все громче.
NounPrep(отрыв,от,2) // Лидер пришел с отрывом от остальных спортсменов.
NounPrep(крик,о,2) // вдруг они услышали крики о помощи.
NounPrep(адаптация,к,2) // моя адаптация к местным условиям прошла
NounPrep(взаимодействие,с,2) // взаимодействие России с Турцией
NounPrep(вывод,из,2) // вывод этих глав из рассмотрения
NounPrep(выход,из,2)
NounPrep(итог,за,1) // итоги его работы за год впечатляют
NounPrep(задолженность,по,2) // нарастает задолженность по кредитам
NounPrep(повышение,на,2) // Рабочие бастуют, требуя повышения зарплаты на двадцать процентов.
NounPrep(трансляция,через,2) // о трансляции этого канала через местные кабельные сети
NounPrep(мера,по,2) // Следует немедленно принять все необходимые меры по предотвращению аварии
NounPrep(прикосновение,к,2) // каждое прикосновение чужой мысли к нам
NounPrep(прогулка,по,2) // увлечь в прогулку по парку
NounPrep(уборка,в,2) // В воскресенье он сделал уборку в комнате.
NounPrep(прыжок,из,2) // изготовляться к прыжку из стратосферы
NounPrep(склонность,к,2) // проявлять склонность к немотивированной агрессии
NounPrep(цена,на,2) // сбивать цены на нефть
NounPrep(программирование,на,2) // прослушать учебный курс по программированию на функциональных языках
NounPrep(ненависть,к,2) // он испытывает давнюю ненависть к паукам
NounPrep(привязанность,к,2) // питать привязанность к алкоголю
NounPrep(склонность,к,2) // проявлять склонность к немотивированной агрессии
NounPrep(доверие,к,2) // Я не питаю большого доверия к её талантам.
NounPrep(выбор,из,2) // сложность выбора правила из большого числа правил вывода
NounPrep(торговля,с,2) // Провинция богатеет от торговли с соседями
NounPrep(интерес,к,1) // Он всегда проявлял живой интерес к нашим делам.
NounPrep(неявка,на,1) // Она оправдала неявку на занятия болезнью.
NounPrep(экзамен,по,1) // сдать экзамен по английскому языку
NounPrep(курс,по,1) // слушать курс по русской литературе
NounPrep(работа,по,1) // готовить контрольную работу по сопротивлению материалов
NounPrep(помощь,по,2) // Нужна помощь по архитектурному решению
NounPrep(конфликт,с,2) // уладить конфликт с соседями
NounPrep(корм,для,2) // Купи корм для трех псов
NounPrep(работа,над,1) // скорей бы начать работу над этим проектом
NounPrep(операция,по,1) // операция по задержанию преступников удачно завершена
NounPrep(разлука,с,1) // Он живёт в разлуке с женой.
NounPrep(письмо,от,1) // Я получил письмо от отца.
NounPrep(связь,между,1) // Эти вопросы находятся в тесной связи между собой.
NounPrep(повышение,на,1) // Рабочие бастуют, требуя повышения зарплаты на двадцать процентов.
NounPrep(книга,про,1) 
NounPrep(упоминание,об,1) // поищи упоминание об этом у коллеги
NounPrep(фильм,о,1)
NounPrep(корм,для,1) // я куплю корм для кошки, мышки и собаки
NounPrep(недостаток,в,1) // Здесь недостаток в воде был заметен
NounPrep(сходство,с,2) // У Маши с Петей есть сходство
NounPrep(отношение,к,5) // Его отношение к людям проникнуто крайним идеализмом.
NounPrep(склонность,к,5) // У него склонность к полноте.
NounPrep(защита,от,1) // навес для защиты от дождя
NounPrep(риск,для,1) // Любовь с риском для жизни
NounPrep(повышение,на,1) // Рабочие бастуют, требуя повышения зарплаты на двадцать процентов.
NounPrep(знакомство,с,1) // Я имел желание завязать личное знакомство с ним.
NounPrep(договор,с,1) // По вопросу о заключении договора с этим банком выступил Иванов.
NounPrep(участие,в,1) // Приглашаем всех желающих принять участие в работе над статьями
NounPrep(власть,над,1) // этот обман дал мне больше власти над ним.
NounPrep(передача,из,1) // Мы начинаем передачу из Москвы.
NounPrep(исключение,из,1) // Это составляет исключение из общего правила.
NounPrep(лекарство,от,1) // Она зашла в аптеку и заказала себе лекарство от гриппа.
NounPrep(спасение,от,1)
NounPrep(избавление,от,1)
NounPrep(призыв,к,1) // Он закончил речь призывом к борьбе.
NounPrep(проход,между,1) // впереди открылся тот самый проход между холмами.
NounPrep(успех,среди,1) // Этот кинофильм пользуется большим успехом среди студентов.
NounPrep(шум,от,1) // шум от животных опять усилился.
NounPrep(выход,из,1) // нужно самим искать выход из положения.
NounPrep(вакцинация,от,1) // Международные организации приостанавливают вакцинацию детей в Пакистане от полиомиелита
NounPrep(прививка,от,1)
NounPrep(давление,на,1) // Давление солнечного света на плёнку изменяет орбиту астероида
NounPrep(нажим,на,1)
NounPrep(воссоединение,с,1) // Госдеп США добивается воссоединения российских сирот с уже найденными родителями
NounPrep(голосование,по,1) // В Египте начался второй раунд голосования по Конституции страны.
NounPrep(хождение,по,1) // Хождение по газонам запрещено.
NounPrep(снаряжение,для,1) // там началось снаряжение отряда для долгого похода.
NounPrep(отличие,от,1) // Основным отличием от оригинальной игры стали новые разновидности противников
NounPrep(оглядка,на,1) // без оглядки на ранние договоренности
NounPrep(спасение,от,1)
NounPrep(отделение,от,1)
NounPrep(вопрос,о,1) // вас интересует вопрос о смысле жизни?
NounPrep(встреча,с,1) // их ждет встреча со старым знакомым.
NounPrep(свидание,с,1) // 
NounPrep(связь,с,1) // 
NounPrep(соперничество,с,1) // 
NounPrep(борьба,с,1) // 
NounPrep(сопоставление,с,1)
NounPrep(маска,для,1) // Свежие огурцы входят в состав косметических масок для лица, которые отбеливают кожу и делают её более эластичной
NounPrep(обвинение,в,1) // Французский министр подал в отставку из-за обвинений в неуплате налогов
NounPrep(испытание,на,1) // Начинаются испытания стволовых клеток на людях
NounPrep(отсутствие,у,2) // Отсутствие сыновей у влиятельного гасконца привело к войне почти на целый век.
NounPrep(контроль,над,2) // Контроль российских силовых структур над всем, что связано с Олимпиадой, будет тотальным и беспрецедентным.
NounPrep(контроль,за,2) // выступает как инструмент общественного контроля за нравственностью госслужащих
NounPrep(консультация,по,2) // Конгресс напомнил президенту США о необходимости консультаций по Сирии
NounPrep(интервенция,в,2) // Британия отказалась от "гуманитарной интервенции" в Сирию 
NounPrep(резолюция,об,2) // Британский парламент отклонил правительственную резолюцию об основаниях для военной интервенции в Сирию
NounPrep(резолюция,о,2) // Британский парламент отклонил резолюцию о необходимости "гуманитарной интервенции" в Сирию
NounPrep(требование,об,2) // Требование правообладателя об удалении контента должно включать полный адрес страницы сайта, где размещен этот контент.
NounPrep(кампания,по,2) // Кампания по отлову нелегальных мигрантов не может увенчаться успехом
NounPrep(референдум,по,2) // Г.Зюганов предлагает референдум по национализации минерально-сырьевой базы РФ
NounPrep(вступление,в,2) // Дания поддерживает вступление Грузии в НАТО и признает ее территориальную целостность
NounPrep(опасение,за,2) // Но  у него есть серьезные опасения за ее жизнь.
NounPrep(взаимоотношение,между,2) // В этом случае происходит изменение взаимоотношения между людьми, наполняющими властные структуры
NounPrep(запчасть,к,2) // станки с программным управлением и запчасти к ним
NounPrep(гонка,за,2) // Подобная политика имела смешанный успех во время фазы гонки за развитыми экономиками
NounPrep(присутствие,в,2) // Перспективы и последствия военного присутствия Индии в Средней Азии
NounPrep(спрос,на,1) // Спрос на товары
NounPrep(выделение,из,2) // Капустный сок снижает содержание сахара в крови, усиливает выделение излишней жидкости из организма
NounPrep(отставание,от,2)
NounPrep(взгляд,на,1) // Они очень разнятся по своим вкусам и взглядам на жизнь
NounPrep(надежда,на,2) // Не  было  никакой  надежды  на  успех,  зато  распевали  птицы,  плескались  ручьи
NounPrep(поправка,на,1) // При наблюдении звезд необходимо сделать поправку на аберрацию.
NounPrep(освобождение,от,2) // Кадеты мечтали об освобождении от крепостничества, произвола, самодурства, азиатчины, самодержавия без свержения старой власти.
NounPrep(влияние,на,2) // 
NounPrep(вхождение,в,1) // Это было одним из условий вхождения Литвы в Евросоюз.
NounPrep(разрешение,на,2) // Бездействие полиции и властей местные жители восприняли как негласное разрешение на расправу с соседями
NounPrep(расправа,с,2)
NounPrep(рассказ,о,1) // Свое выступление уроженец Чечни начал с рассказа о своей трудной и напряженной правозащитной деятельности
NounPrep(льгота,по,1) // В Калмыкии льготы по оплате коммунальных услуг заменят денежными выплатами
NounPrep(насилие,над,2)
NounPrep(извлечение,из,1) // Для извлечения тела погибшей из покореженного кузова привлекались спасатели.
NounPrep(панихида,по,1) // Панихида по Эдварду Исабекяну состоится завтра, 21 августа.
NounPrep(охрана,от,2) // В этой связи были усилены меры по охране лесов от пожаров.
NounPrep(воздействие,на,2) // Компании-разработчику предстоит ликвидировать последствия техногенных воздействий на окружающую среду.
NounPrep(мнение,о,2) // Состоялся также обмен мнениями о военно-политической ситуации в регионе.
NounPrep(сдача,в,1) // Сдача трубопровода в эксплуатацию переносится на более поздний срок.
NounPrep(рекорд,по,2) // Житель Новокузнецка побил рекорд по содержанию алкоголя в крови и попал под колеса машины
NounPrep(привлечение,к,2)
NounPrep(выбивание,из,2) // Он большой мастер по части выбивания денег из начальства.
NounPrep(замечание,по,2) // Они тоже не высказали замечаний по процедуре волеизъявления избирателей Московской области.
NounPrep(долг,за,2) // В течение августа планируется закрыть долги за июнь полностью.
NounPrep(борьба,против,2) // Это активизировало подпольную борьбу словацкого народа против фашизма.
NounPrep(катание,на,2) // Ей каждую ночь снится катание на велосипеде.

// --------------------------------------

#define AdjPrep( a, prep, s ) \
#begin
fact prepos_score
{
 if context { прилагательное:a{} предлог:prep{} }
  then return s
}
#end

AdjPrep(виноватый,перед,2) // словно был виноват перед ней


