.class public Lnet/minidev/json/writer/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# instance fields
.field public DEFAULT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/writer/JsonReader;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    const-class v1, Ljava/util/Date;

    sget-object v2, Lnet/minidev/json/writer/BeansMapper;->MAPPER_DATE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, [I

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, [Ljava/lang/Integer;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, [S

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, [Ljava/lang/Short;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, [J

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_LONG:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, [Ljava/lang/Long;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_LONG:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v1, [B

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_BYTE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, [Ljava/lang/Byte;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_BYTE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v1, [C

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_CHAR:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v1, [Ljava/lang/Character;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_CHAR:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, [F

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_FLOAT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-class v1, [Ljava/lang/Float;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_FLOAT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-class v1, [D

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-class v1, [Ljava/lang/Double;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-class v1, [Z

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_BOOL:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class v1, [Ljava/lang/Boolean;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_BOOL:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Lnet/minidev/json/writer/DefaultMapper;

    invoke-direct {v1, p0}, Lnet/minidev/json/writer/DefaultMapper;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    iput-object v1, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    .line 21
    new-instance v1, Lnet/minidev/json/writer/DefaultMapperOrdered;

    invoke-direct {v1, p0}, Lnet/minidev/json/writer/DefaultMapperOrdered;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    iput-object v1, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;

    .line 22
    const-class v1, Lnet/minidev/json/JSONAwareEx;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v1, Lnet/minidev/json/JSONAware;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v1, Lnet/minidev/json/JSONArray;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-class v1, Lnet/minidev/json/JSONObject;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/json/writer/JsonReaderI;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 6
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v0, Lnet/minidev/json/writer/DefaultMapperCollection;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/DefaultMapperCollection;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_0

    .line 8
    :cond_1
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v0, Lnet/minidev/json/writer/DefaultMapperCollection;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/DefaultMapperCollection;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lnet/minidev/json/writer/JsonReader;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 11
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$GenericMapper;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/ArraysMapper$GenericMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_1

    .line 13
    :cond_4
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$ListClass;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$ListClass;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_1

    .line 15
    :cond_5
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$MapClass;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$MapClass;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_1

    .line 17
    :cond_6
    new-instance v0, Lnet/minidev/json/writer/BeansMapper$Bean;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/BeansMapper$Bean;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    .line 18
    :goto_1
    iget-object v1, p0, Lnet/minidev/json/writer/JsonReader;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMapper(Ljava/lang/reflect/ParameterizedType;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/json/writer/JsonReaderI;

    if-eqz v0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 21
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$ListType;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$ListType;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_0

    .line 23
    :cond_1
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$MapType;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$MapType;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/reflect/ParameterizedType;)V

    .line 25
    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/minidev/json/writer/JsonReader;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/ParameterizedType;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1
.end method

.method public registerReader(Ljava/lang/Class;Lnet/minidev/json/writer/JsonReaderI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remapField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lnet/minidev/json/writer/MapperRemapped;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lnet/minidev/json/writer/MapperRemapped;

    invoke-direct {v1, v0}, Lnet/minidev/json/writer/MapperRemapped;-><init>(Lnet/minidev/json/writer/JsonReaderI;)V

    .line 4
    invoke-virtual {p0, p1, v1}, Lnet/minidev/json/writer/JsonReader;->registerReader(Ljava/lang/Class;Lnet/minidev/json/writer/JsonReaderI;)V

    move-object v0, v1

    .line 5
    :cond_0
    check-cast v0, Lnet/minidev/json/writer/MapperRemapped;

    invoke-virtual {v0, p2, p3}, Lnet/minidev/json/writer/MapperRemapped;->renameField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
