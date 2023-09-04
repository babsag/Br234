.class public Lnet/minidev/json/reader/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/reader/JsonWriter$s;
    }
.end annotation


# static fields
.field public static final EnumWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final JSONIterableWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final JSONJSONAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONJSONAwareWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONAware;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONMapWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final JSONStreamAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONStreamAwareWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final arrayWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final beansWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final beansWriterASM:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final toStringWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/minidev/json/reader/JsonWriter$s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$j;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$j;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 2
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$k;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$k;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 3
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$l;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$l;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 4
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$m;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$m;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 5
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$n;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$n;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONIterableWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 6
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$o;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$o;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->EnumWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 7
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$p;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$p;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONMapWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 8
    new-instance v0, Lnet/minidev/json/reader/BeansWriterASM;

    invoke-direct {v0}, Lnet/minidev/json/reader/BeansWriterASM;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->beansWriterASM:Lnet/minidev/json/reader/JsonWriterI;

    .line 9
    new-instance v0, Lnet/minidev/json/reader/BeansWriter;

    invoke-direct {v0}, Lnet/minidev/json/reader/BeansWriter;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->beansWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 10
    new-instance v0, Lnet/minidev/json/reader/ArrayWriter;

    invoke-direct {v0}, Lnet/minidev/json/reader/ArrayWriter;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->arrayWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 11
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$q;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$q;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->toStringWriter:Lnet/minidev/json/reader/JsonWriterI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->b:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/reader/JsonWriter;->init()V

    return-void
.end method

.method public static writeJSONKV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 1
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3, p0}, Lnet/minidev/json/JSONStyle;->mustProtectKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    .line 4
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 5
    invoke-static {p0, p2, p3}, Lnet/minidev/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    .line 6
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 7
    :goto_0
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->objectEndOfKey(Ljava/lang/Appendable;)V

    .line 8
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lnet/minidev/json/JSONStyle;->writeString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1, p2, p3}, Lnet/minidev/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    .line 11
    :goto_1
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->objectElmStop(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public addInterfaceWriterFirst(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterfaceFirst(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public addInterfaceWriterLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterfaceLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public getWrite(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/minidev/json/reader/JsonWriterI;

    return-object p1
.end method

.method public getWriterByInterface(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/minidev/json/reader/JsonWriterI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/minidev/json/reader/JsonWriter$s;

    .line 2
    iget-object v2, v1, Lnet/minidev/json/reader/JsonWriter$s;->a:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, v1, Lnet/minidev/json/reader/JsonWriter$s;->b:Lnet/minidev/json/reader/JsonWriterI;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .locals 6

    .line 1
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$r;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$r;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$a;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$a;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$b;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$b;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$c;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$c;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 5
    sget-object v0, Lnet/minidev/json/reader/JsonWriter;->toStringWriter:Lnet/minidev/json/reader/JsonWriterI;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-class v5, Ljava/lang/Byte;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-class v5, Ljava/lang/Short;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-class v5, Ljava/math/BigInteger;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-class v5, Ljava/math/BigDecimal;

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 7
    new-instance v2, Lnet/minidev/json/reader/JsonWriter$d;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/JsonWriter$d;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, [I

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 8
    new-instance v2, Lnet/minidev/json/reader/JsonWriter$e;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/JsonWriter$e;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, [S

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 9
    new-instance v2, Lnet/minidev/json/reader/JsonWriter$f;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/JsonWriter$f;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, [J

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 10
    new-instance v2, Lnet/minidev/json/reader/JsonWriter$g;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/JsonWriter$g;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, [F

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 11
    new-instance v2, Lnet/minidev/json/reader/JsonWriter$h;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/JsonWriter$h;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, [D

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 12
    new-instance v2, Lnet/minidev/json/reader/JsonWriter$i;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/JsonWriter$i;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, [Z

    aput-object v3, v1, v4

    invoke-virtual {p0, v2, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 13
    const-class v1, Lnet/minidev/json/JSONStreamAwareEx;

    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 14
    const-class v1, Lnet/minidev/json/JSONStreamAware;

    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 15
    const-class v1, Lnet/minidev/json/JSONAwareEx;

    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 16
    const-class v1, Lnet/minidev/json/JSONAware;

    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 17
    const-class v1, Ljava/util/Map;

    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->JSONMapWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 18
    const-class v1, Ljava/lang/Iterable;

    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->JSONIterableWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 19
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->EnumWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 20
    const-class v1, Ljava/lang/Number;

    invoke-virtual {p0, v1, v0}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public varargs registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Lnet/minidev/json/reader/JsonWriter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterfaceLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public registerWriterInterfaceFirst(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->b:Ljava/util/LinkedList;

    new-instance v1, Lnet/minidev/json/reader/JsonWriter$s;

    invoke-direct {v1, p1, p2}, Lnet/minidev/json/reader/JsonWriter$s;-><init>(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public registerWriterInterfaceLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->b:Ljava/util/LinkedList;

    new-instance v1, Lnet/minidev/json/reader/JsonWriter$s;

    invoke-direct {v1, p1, p2}, Lnet/minidev/json/reader/JsonWriter$s;-><init>(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public remapField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    invoke-virtual {p0, p1}, Lnet/minidev/json/reader/JsonWriter;->getWrite(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lnet/minidev/json/reader/BeansWriterASMRemap;

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Lnet/minidev/json/reader/BeansWriterASMRemap;

    invoke-direct {v0}, Lnet/minidev/json/reader/BeansWriterASMRemap;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 5
    :cond_0
    check-cast v0, Lnet/minidev/json/reader/BeansWriterASMRemap;

    invoke-virtual {v0, p2, p3}, Lnet/minidev/json/reader/BeansWriterASMRemap;->renameField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
