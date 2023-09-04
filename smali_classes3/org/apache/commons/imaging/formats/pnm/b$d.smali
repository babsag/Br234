.class abstract Lorg/apache/commons/imaging/formats/pnm/b$d;
.super Ljava/lang/Object;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/commons/imaging/formats/pnm/b;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/formats/pnm/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/b$d;->a:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/formats/pnm/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/b$d;-><init>(Lorg/apache/commons/imaging/formats/pnm/b;)V

    return-void
.end method


# virtual methods
.method public abstract a()Lorg/apache/commons/imaging/ImageInfo$ColorType;
.end method

.method public abstract b(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
