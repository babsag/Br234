.class public final synthetic Lorg/apache/commons/imaging/formats/jpeg/xmp/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;


# static fields
.field public static final synthetic a:Lorg/apache/commons/imaging/formats/jpeg/xmp/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/a;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/a;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/a;->a:Lorg/apache/commons/imaging/formats/jpeg/xmp/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isPhotoshopApp13Segment()Z

    move-result p1

    return p1
.end method
