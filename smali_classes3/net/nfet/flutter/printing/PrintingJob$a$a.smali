.class Lnet/nfet/flutter/printing/PrintingJob$a$a;
.super Ljava/lang/Object;
.source "PrintingJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nfet/flutter/printing/PrintingJob$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lnet/nfet/flutter/printing/PrintingJob$a;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingJob$a;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$wait"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iput-object p2, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->a(Lnet/nfet/flutter/printing/PrintingJob;)Landroid/print/PrintJob;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->a(Lnet/nfet/flutter/printing/PrintingJob;)Landroid/print/PrintJob;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v1, v1, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lnet/nfet/flutter/printing/PrintingHandler;->a(Lnet/nfet/flutter/printing/PrintingJob;ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->a:[Z

    aput-boolean v4, v0, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v1, v1, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-virtual {v0, v1, v4, v3}, Lnet/nfet/flutter/printing/PrintingHandler;->a(Lnet/nfet/flutter/printing/PrintingJob;ZLjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->a:[Z

    aput-boolean v4, v0, v4

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->b:Lnet/nfet/flutter/printing/PrintingJob$a;

    iget-object v1, v1, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    const-string v2, "Unable to print"

    invoke-virtual {v0, v1, v4, v2}, Lnet/nfet/flutter/printing/PrintingHandler;->a(Lnet/nfet/flutter/printing/PrintingJob;ZLjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a$a;->a:[Z

    aput-boolean v4, v0, v4

    :cond_3
    :goto_1
    return-void
.end method
