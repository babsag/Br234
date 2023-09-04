.class public final synthetic Lorg/apache/commons/imaging/formats/tiff/write/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lorg/apache/commons/imaging/formats/tiff/write/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/b;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/b;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/b;->a:Lorg/apache/commons/imaging/formats/tiff/write/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->a(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)I

    move-result p1

    return p1
.end method
