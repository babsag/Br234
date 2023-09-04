.class public Lnet/minidev/json/writer/CollectionMapper$ListType;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/minidev/json/writer/JsonReaderI<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/reflect/ParameterizedType;

.field final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final e:Lnet/minidev/asm/BeansAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/asm/BeansAccess<",
            "*>;"
        }
    .end annotation
.end field

.field final f:Ljava/lang/reflect/Type;

.field final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field h:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    .line 2
    iput-object p2, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->b:Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->c:Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-class p1, Lnet/minidev/json/JSONArray;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->d:Ljava/lang/Class;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->d:Ljava/lang/Class;

    .line 7
    :goto_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->d:Ljava/lang/Class;

    sget-object v0, Lnet/minidev/json/JSONUtil;->JSON_SMART_FIELD_FILTER:Lnet/minidev/json/JSONUtil$JsonSmartFieldFilter;

    invoke-static {p1, v0}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/BeansAccess;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->e:Lnet/minidev/asm/BeansAccess;

    .line 8
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->f:Ljava/lang/reflect/Type;

    .line 9
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 10
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->g:Ljava/lang/Class;

    goto :goto_1

    .line 11
    :cond_1
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->g:Ljava/lang/Class;

    :goto_1
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->g:Ljava/lang/Class;

    invoke-static {p2, v0}, Lnet/minidev/json/JSONUtil;->convertToX(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->e:Lnet/minidev/asm/BeansAccess;

    invoke-virtual {v0}, Lnet/minidev/asm/BeansAccess;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->h:Lnet/minidev/json/writer/JsonReaderI;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->b:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->h:Lnet/minidev/json/writer/JsonReaderI;

    .line 3
    :cond_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->h:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->h:Lnet/minidev/json/writer/JsonReaderI;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->b:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->h:Lnet/minidev/json/writer/JsonReaderI;

    .line 3
    :cond_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->h:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method
