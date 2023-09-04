.class Lorg/apache/commons/imaging/formats/tiff/write/f$a;
.super Ljava/lang/Object;
.source "TiffOutputSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/write/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

.field public final b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/f$a;->b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/f$a;->a:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    return-void
.end method
