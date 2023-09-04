.class Lorg/apache/commons/imaging/formats/png/d$a;
.super Ljava/lang/Object;
.source "PngWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/png/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:B

.field public final d:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public final e:B

.field public final f:B

.field public final g:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;


# direct methods
.method constructor <init>(IIBLorg/apache/commons/imaging/formats/png/PngColorType;BBLorg/apache/commons/imaging/formats/png/InterlaceMethod;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/d$a;->a:I

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/d$a;->b:I

    .line 4
    iput-byte p3, p0, Lorg/apache/commons/imaging/formats/png/d$a;->c:B

    .line 5
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/d$a;->d:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 6
    iput-byte p5, p0, Lorg/apache/commons/imaging/formats/png/d$a;->e:B

    .line 7
    iput-byte p6, p0, Lorg/apache/commons/imaging/formats/png/d$a;->f:B

    .line 8
    iput-object p7, p0, Lorg/apache/commons/imaging/formats/png/d$a;->g:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    return-void
.end method
