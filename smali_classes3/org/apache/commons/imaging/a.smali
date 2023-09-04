.class public final synthetic Lorg/apache/commons/imaging/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/imaging/common/bytesource/ByteSource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/a;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSource;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/a;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSource;

    check-cast p1, Lorg/apache/commons/imaging/ImageFormats;

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->j(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImageFormats;)Z

    move-result p1

    return p1
.end method
