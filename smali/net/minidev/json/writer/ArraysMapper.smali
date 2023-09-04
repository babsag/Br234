.class public Lnet/minidev/json/writer/ArraysMapper;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "ArraysMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/writer/ArraysMapper$GenericMapper;
    }
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


# static fields
.field public static MAPPER_BOOL:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static MAPPER_BYTE:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static MAPPER_CHAR:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static MAPPER_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static MAPPER_FLOAT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static MAPPER_INT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static MAPPER_LONG:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_BOOL:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_BYTE:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[B>;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_CHAR:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[C>;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[D>;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_FLOAT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[F>;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_INT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[I>;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_LONG:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[J>;"
        }
    .end annotation
.end field

.field public static MAPPER_PRIM_SHORT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[S>;"
        }
    .end annotation
.end field

.field public static MAPPER_SHORT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "[",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$h;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_INT:Lnet/minidev/json/writer/JsonReaderI;

    .line 2
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$i;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$i;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_INT:Lnet/minidev/json/writer/JsonReaderI;

    .line 3
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$j;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$j;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_SHORT:Lnet/minidev/json/writer/JsonReaderI;

    .line 4
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$k;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$k;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_SHORT:Lnet/minidev/json/writer/JsonReaderI;

    .line 5
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$l;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$l;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_BYTE:Lnet/minidev/json/writer/JsonReaderI;

    .line 6
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$m;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$m;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_BYTE:Lnet/minidev/json/writer/JsonReaderI;

    .line 7
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$n;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$n;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_CHAR:Lnet/minidev/json/writer/JsonReaderI;

    .line 8
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$o;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$o;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_CHAR:Lnet/minidev/json/writer/JsonReaderI;

    .line 9
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$p;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$p;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_LONG:Lnet/minidev/json/writer/JsonReaderI;

    .line 10
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$a;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$a;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_LONG:Lnet/minidev/json/writer/JsonReaderI;

    .line 11
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$b;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$b;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_FLOAT:Lnet/minidev/json/writer/JsonReaderI;

    .line 12
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$c;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$c;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_FLOAT:Lnet/minidev/json/writer/JsonReaderI;

    .line 13
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$d;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$d;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;

    .line 14
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$e;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$e;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;

    .line 15
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$f;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$f;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_BOOL:Lnet/minidev/json/writer/JsonReaderI;

    .line 16
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$g;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/ArraysMapper$g;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_BOOL:Lnet/minidev/json/writer/JsonReaderI;

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/JsonReader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
