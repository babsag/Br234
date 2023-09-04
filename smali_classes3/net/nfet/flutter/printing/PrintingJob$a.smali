.class Lnet/nfet/flutter/printing/PrintingJob$a;
.super Ljava/lang/Object;
.source "PrintingJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nfet/flutter/printing/PrintingJob;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/nfet/flutter/printing/PrintingJob;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingJob;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    const/16 v0, 0xbb8

    .line 1
    :cond_0
    :goto_0
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_2

    .line 2
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lnet/nfet/flutter/printing/PrintingJob$a$a;

    invoke-direct {v4, p0, v1}, Lnet/nfet/flutter/printing/PrintingJob$a$a;-><init>(Lnet/nfet/flutter/printing/PrintingJob$a;[Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    .line 3
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    const-wide/16 v3, 0xc8

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Timeout waiting for the job to finish"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lnet/nfet/flutter/printing/PrintingJob$a$b;

    invoke-direct {v2, p0, v0}, Lnet/nfet/flutter/printing/PrintingJob$a$b;-><init>(Lnet/nfet/flutter/printing/PrintingJob$a;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_2
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$a;->a:Lnet/nfet/flutter/printing/PrintingJob;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/nfet/flutter/printing/PrintingJob;->b(Lnet/nfet/flutter/printing/PrintingJob;Landroid/print/PrintJob;)Landroid/print/PrintJob;

    return-void
.end method
