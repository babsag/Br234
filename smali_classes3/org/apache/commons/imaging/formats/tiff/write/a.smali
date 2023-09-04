.class public final synthetic Lorg/apache/commons/imaging/formats/tiff/write/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lorg/apache/commons/imaging/formats/tiff/write/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/a;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/a;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/a;->a:Lorg/apache/commons/imaging/formats/tiff/write/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    invoke-static {p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->f(Lorg/apache/commons/imaging/formats/tiff/TiffElement;)I

    move-result p1

    return p1
.end method
