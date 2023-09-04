.class Lnet/nfet/flutter/printing/PrintingHandler$a;
.super Ljava/lang/Object;
.source "PrintingHandler.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nfet/flutter/printing/PrintingHandler;->d(Lnet/nfet/flutter/printing/PrintingJob;Ljava/lang/Double;DDDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/nfet/flutter/printing/PrintingJob;

.field final synthetic b:Lnet/nfet/flutter/printing/PrintingHandler;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingHandler;Lnet/nfet/flutter/printing/PrintingJob;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$printJob"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingHandler$a;->b:Lnet/nfet/flutter/printing/PrintingHandler;

    iput-object p2, p0, Lnet/nfet/flutter/printing/PrintingHandler$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMessage",
            "errorDetails"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingHandler$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-virtual {p1, p2}, Lnet/nfet/flutter/printing/PrintingJob;->e(Ljava/lang/String;)V

    return-void
.end method

.method public notImplemented()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingHandler$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    const-string v1, "notImplemented"

    invoke-virtual {v0, v1}, Lnet/nfet/flutter/printing/PrintingJob;->e(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingHandler$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lnet/nfet/flutter/printing/PrintingJob;->j([B)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingHandler$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    const-string v0, "Unknown data received"

    invoke-virtual {p1, v0}, Lnet/nfet/flutter/printing/PrintingJob;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
