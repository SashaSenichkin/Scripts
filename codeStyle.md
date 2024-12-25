﻿**Правила сформированы на основе конвенций изложенных Microsoft [тут](https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/identifier-names) и [тут](https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions). А так же расширены гайдлайном компании Google [отсюда](https://google.github.io/styleguide/csharp-style.html).**

**Именование**

- Имена интерфейсов начинаются с заглавной буквы I. Старайтесь избегать интерфейсов с двумя I в начале, например IIdentifiable. Попробуйте подобрать синоним, например IRecognizable.
- Типы атрибутов заканчиваются словом Attribute.
- Пользовательский тип обязан содержать в конце префикс директории в которой распологается тип для определения его бизнес принадлежности.
- Типы перечисления используют единственное существительное для нефлагов и множественное существительное для флагов. И должны использовать суфиксы конкретного поведения например Style, Type, Mode, State.
- Идентификаторы не должны содержать два последовательных символа подчеркивания (\_). Эти имена зарезервированы для идентификаторов, созданных компилятором.
- Используйте значимые и описательные имена для переменных, методов и классов.
- Предпочитайте ясность по поводу краткости.
- Используйте PascalCase для имен классов и имен методов. А так же функциональный стиль для методов, когда указание эффектов метода включается в его наименовани. Пример: FindByIdOrThrow.
- В случае если метод асинхронный (возвращает Task, Task<T>, ValueTask<T>) то именование такого метода должно содержаться слово Async. Пример: Method1Async.
- Используйте camelCase для аргументов метода, локальных переменных и частных полей.
- Используйте PascalCase для имен констант, как полей, так и локальных констант.
- Поля экземпляра начинаются с подчеркивания (\_).
- Статические поля начинаются с s\_. А для статического поля потока используйте t\_.
- Рекомендуется использовать T в качестве имени параметра типа для типов с одним параметром типа буквы. Используйте префикс "T" для описательных имен параметров типа.
- Избегайте использования аббривеатуру или акронимов в именах, за исключением широко известных и принятых аббревиаций. В случае если необходимо использовать аббривеатуру она должна следовать нотации PascalCase. Например: не ZAO, а Zao.
- Используйте значимые и описательные пространства имен, которые соответствуют нотации обратного доменного имени.
- Выберите имена сборок, представляющие основную цель сборки.
- Избегайте использования однобуквенных имен, за исключением простых счетчиков циклов. Кроме того, в примерах синтаксиса, описывающих синтаксис конструкций C#, часто используются следующие однобуквные имена, соответствующие соглашению, используемому [в спецификации](https://learn.microsoft.com/ru-ru/dotnet/csharp/language-reference/language-specification/readme) языка C#. Примеры синтаксиса являются исключением из правила.
  - Используется S для структур C для классов.
  - Используется M для методов.
  - Используется v для переменных p для параметров.
  - Используется r для ref параметров.
- В случае если Тип выступает базовым по отношению к другим и является абстрактным его наименование должно начинаться со слова Base.

  public abstract class BaseVerificationService

  { }

  public sealed class VerificationService : BaseVerificationService

  { }

**Оформление**

**Отступы и форматирование**

- Используйте **пробелы (4)**, а не табуляцию для отступов.
- При форматировании текста используйте пробелы.
- При переносе части кода инструкций и описаний на другую строку вторая и последующая строки должны быть отбиты вправо на один отступ.
- Не размещайте несколько инструкций на одной строке. Каждая инструкция должна начинаться с новой строки.
- Строки должны не превышать 100 символов.
- Используйте стиль Allman для фигурных скобок (каждая скобка на новой линии).
- Модификаторы должны указываться в следующем порядке: public protected internal private new abstract virtual override sealed static readonly extern unsafe volatile async.
- Используйте **одну пустую строку** между объявлениями классов и интерфейсов, методами, логическими секциями и логическими частями в методе.
- Все операторы должны быть отделены пробелом от операндов с обеих сторон.
- После запятой и точки запятой, если они не последние в строке, всегда должен ставиться пробел.
- В объявлении метода перед скобками пробела быть не должно.
- Допускается использовать один тип на один файл. Исключения состовляют случаи когда тип является часть контракта и больше нигде не переиспользуется.
- Все поля должны содержать модификатор доступа в объявлении поля.
- Базовые классы и интерфейсы должны указываться на той же строке, что и объявление класса. Если список не умещается в 100 символов, снесите его, вместе с двоеточием, и сделайте отступ на 4 пробела вправо. Размещайте на строке столько элементов, сколько умещается в 100 символов.
- Namespac’ы должны оформляться в scoped формате, для сокращения вложенности и количества фигурных скобок.

**Комментарии**

- Не используйте многострочные (/\*\*...\*\*/) комментарии для описания классов и методов, используйте для этих целей XML documentation-комментарии. Многострочные комментарии не могут быть вложенными, поэтому их использование может создать проблемы.
- Для описания сути некоторого участка кода, пояснений к алгоритму и другой важной информации используйте несколько подряд идущих однострочных комментариев (//...). Между группой комментариев и собственно кодом поставьте пустую строку. Это покажет, что комментарий относится к блоку кода, а не к конкретной инструкции. Напротив, если комментарий относится к конкретной инструкции, прижмите его вплотную к этой инструкции.
- Отделяйте текст комментария одним пробелом // Текст комментария..
- Комментируя код, старайтесь объяснять, что он делает, а не какая операция производится. Так, инструкции if соответствует выражение «если... то...», причем часть, идущая за «то», является кодом, который будет выполняться, если выражение в if будет верным. Таким образом, для конструкции if (somePath && File.Exists(somePath)), нужно написать комментарий «// Если выбранный файл существует, то...», а не «// Производим проверку на наличие файла и, если он имеется, удаляем его». Часть предложения, идущую за «то», вписывайте непосредственно перед выполнением конкретных действий. Для инструкций, осуществляющих действия, пишите «// Производим...» или «// Делаем...», где вместо троеточия вписывайте описания действий. Описывая действия, старайтесь описывать суть происходящего, а не то, что делают те или иные операторы. Так, совершенно бессмысленны комментарии вроде «Присваиваем переменной a значение b» или «вызываем метод f».
- Помните, что экономить на комментариях нельзя. Однако не стоит также формально подходить к процессу создания комментариев. Задача комментария – упростить понимание кода. Есть немало случаев, когда сам код отличным образом себя документирует.
- Обязательному комментированию подвергаются публичные контракты (методы классов, свойства и тд), инкапсулированные функциональные единицы не обязаны быть документированы, но допускается просьба о комментарии на усмотрение ревьюера при проверки кода.
- Публичные методы классов обязаны либо содерджать комментарий либо ссылку на комментарий в интерфейсе или базовом классе.
- Методы подразумевающие общение с внешними системами или являющиеся точками интеграций для внешних систем обязаны помимо описания работы, содержать примеры возвращаемых данных в сыром виде и описания возможных вариантов ошибок и/или вариантов возвращаемых данных.
- Если комментарий из одного предложения или тем более, одного слова, не ставить в конце точку.

**Инструкции (statements)**

- Тело любого оператора: if/else/while/for/foreach должно заключаться в фигурных скобках даже в тех случаях когда если оно однострочное.
- Предпочтительнее вместо базовых операторов перебора использовать функциональные обобщения расположенные в пакетах.
- Если выражение в условном операторе включает в себя более одного операнда, части условия должны быть сгруппированы скобками с разделителем в виде условного оператора.

  if((a > b) && (b < c)) {}

- Стоит использовать внутри тела метода скоращенную форму оператора using, однако если время жизни ресурса ограниченно и/или метод объемный стоит пренебречь этим правилом и освободить ресурс как можно раньше.

**Объявление перменных**

- Все локальные переменные должны быть проинициализированы, в случае если проинициализировать перменную невозможно она должна быть объявлена с использованием конкретного типа.

  var foo = "";

  SpecificCustomType bar;

- При объявлении переменной если допустимо ее использование с присвоением нулевого значения она должна быть помечена как nullable , в противном случае не допустимо присваивать к переменной нулевое значение.

  // Bad

  SpecificCustomType bar;

  // Good

  SpecificCustomType bar = new();

  // Good

  SpecificCustomType? bar;

- Используйте явное объявление в случае если нужно инициализировать численную переменную отличную от типа по умолчани, например если требуется short или long вместо int.
- Во всех остальных случаях используется неявное объявление.
- Не используйте имена переменных для указания типа переменной. Имя может быть неверным. Вместо этого используйте тип, чтобы указать тип и   использовать имя переменной, чтобы указать семантические сведения переменной. Следующий пример должен использоваться string для типа и что-то подобное iterations , чтобы указать значение информации, считываемой из консоли.

  var inputInt = Console.ReadLine();

  Console.WriteLine(inputInt);

**Enum’ы**

- Записывайте значения перечисления на отдельных строках.
- Необходимо каждое значения перечисления помечать атрибутом Description и прописывать название на русском языке.
- Оставлять запятую после последнего элемента перечисления.

**Коллекции**

- Входным типом коллекции для любых методов, если нет функциональной потребности, должен быть интерфейс IEnumerable.
- Выходным типом коллекции для большинства случае должен быть интерфейс IReadOnlyCollection внутри метода коллекцию стоит формировать типа Array.
- В случае если коллекцию для конкретного сценария необходимо мутировать допустимо возвращать коллекцию отличного вида, но такой кейс должен быть дополнительно утвержден на ревью.
- Запрещено возращение коллекций в виде итераторов (IEnumerable, IAsyncEnumerable) кроме отдельных случаев оговоренных на ревью где без них невозможно обойтись.
- В случае использования итераторов категорически запрещено многократное итерирование, в случае если обойти нужно более одного раза необходимо использовать кэшированные значения.
- В случае необходимости обработоть поток данных содержащий тяжелые объекты допустимо использование интерфейса IAsyncEnumerable.
- В случае если необходимо инициализировать пустую коллекцию с последующим пере присвоеннием необходимо инцииализировать переменную через Array.Empty<T>().
- Недопускается наличие null коллекций внутри свойств и возвращаемых значений.

**LINQ**

- Допускается использование Linq запросов в функциональном стиле, описание запросов приближенное к SQL для Linq не допускается.
- Допускается использование методов внутри запроса только для скомпилированных лямбда выражений либо только в случае если запрос будет обработан в памяти и не будет передаваться на выполнение в БД и/или другую среду обработки запросов. Использование методов для лямбда выражений которые будут частью IQueryable категорически запрещено.
- Запрещено использовать синхронные реализации коллекции в память ToList/ToArray/etc для IQueryable. Для таких случаев необходимо использовать асинхронную версию.

**Константы**

- Должны использоваться вместо[ магических значений](https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5_%D1%87%D0%B8%D1%81%D0%BB%D0%BE_\(%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5\)) настолько насколько это возможно.
- Должны содержаться в отдельных статических типах отражающих их логическое обобщение друг к другу.
- Запрещенно использовать изменяемые типы в качестве констант. Любая константа обязана быть неизменной. Если требуется использование базовых типов необходимо применять ключевое слово const. В случае если требуется использование отличных типов необходимо использовать сочетание ключевого слова readonly и интерфейсов допускающих исключительно иммутабельное поведение.
- Запрещенно содержание вычисляемых выражений внутри константы, такие операции необходимо перенести в вспомогательные классы или обобщенные операции.
- При добавлении новой константы необходимо предварительно убедится что не было уже добавлено схожей ранее.

**Методы**

- Наименование должно отражать логику метода и его результата. Недопускается применение общих имен и имена расходящиеся с содержимым метода.
- Должны быть оформлены в функциональном стиле.
- По возможности иметь возвращаемое значение, желательно в виде бизнесового объекта.
- Необходимо обобщать аргументы метода в отдельный тип для упрощенной передаче в том случае если параметры полезной нагрузки (относящиеся напрямую к функциональной логике метода) превышают числом 3. Если параметров полезной нагрузке <3 то решение остается на основе разработчика, но может быть скорректированно ревьюером на его усмотрение.
- Не допускается использование метода ConfigureAwait. Даже в библиотечном коде. Поскольку не предполагается использование функционала средой с наличием контекста синхронизации.
- Не допускается оборачивание асинхронного метода вызовом Task.Run().

  // Bad

  Task.Run(\_ => SomeMethodAsync());


  // Good

  SomeMethodAsync();

- Не допускается возврат из методов результатов в формате Tuple<>, возвращаемое значение должно быть либо пользовательским типом либо базовым типом языка. Исключения составляют методы концепции, либо методы разработанные в период кранча. при любом исключающем случае должно быть сформирован комментарий с ссылкой на задачу в рамках которой будет устранен тех долг и такой участок допустим только с дополнительного согласования на ревью.
- Рекомендуется избегать вложенных методов и по возможности стараться разбивать решение таким образом чтобы избегать их. Если нет возможности избежать этого такой должен быть согласован на ревью.
- Любой асинхронный методы должен последним обязательным аргументом принимать CancellationToken.
- CancellationToken не должен входить в состав пользовательских типов (POCO, DTO и моделей) передаваемых через аргументы метода и должен поставляться через отдельный аргумент.
- CancellationToken допускается именовать как ct, token либо cancellationToken.

**Пользовательские типы**

- Необходимо организовывать как 1к1, один пользовательский тип, на один файл. Исключения составные контракты части которых не переиспользуются в других местах и оговоренные на ревью утвержденные случаи.
- Необходимо инкапсулировать поведение и внутренние части типов, вызывающий пользовательский тип код не должен иметь возможность влиять на поведение и изменять состав зависимостей.
