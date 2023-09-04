.class public final synthetic Lorg/apache/commons/imaging/formats/tiff/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lorg/apache/commons/imaging/formats/tiff/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/d;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/d;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/d;->a:Lorg/apache/commons/imaging/formats/tiff/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/apache/commons/imaging/formats/tiff/e;->e(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
