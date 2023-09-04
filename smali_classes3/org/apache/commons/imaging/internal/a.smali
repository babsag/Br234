.class public final synthetic Lorg/apache/commons/imaging/internal/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/imaging/ImageFormat;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/imaging/ImageFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/internal/a;->a:Lorg/apache/commons/imaging/ImageFormat;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/internal/a;->a:Lorg/apache/commons/imaging/ImageFormat;

    check-cast p1, Lorg/apache/commons/imaging/ImageParser;

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/internal/Util;->b(Lorg/apache/commons/imaging/ImageFormat;Lorg/apache/commons/imaging/ImageParser;)Z

    move-result p1

    return p1
.end method
