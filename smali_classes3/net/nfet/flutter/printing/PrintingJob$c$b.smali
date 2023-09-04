.class Lnet/nfet/flutter/printing/PrintingJob$c$b;
.super Ljava/lang/Object;
.source "PrintingJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nfet/flutter/printing/PrintingJob$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/nfet/flutter/printing/PrintingJob$c;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingJob$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$c$b;->a:Lnet/nfet/flutter/printing/PrintingJob$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$c$b;->a:Lnet/nfet/flutter/printing/PrintingJob$c;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$c;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob$c$b;->a:Lnet/nfet/flutter/printing/PrintingJob$c;

    iget-object v1, v1, Lnet/nfet/flutter/printing/PrintingJob$c;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-virtual {v0, v1}, Lnet/nfet/flutter/printing/PrintingHandler;->e(Lnet/nfet/flutter/printing/PrintingJob;)V

    return-void
.end method
