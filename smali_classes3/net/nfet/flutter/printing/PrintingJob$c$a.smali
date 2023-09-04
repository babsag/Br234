.class Lnet/nfet/flutter/printing/PrintingJob$c$a;
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
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lnet/nfet/flutter/printing/PrintingJob$c;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingJob$c;Ljava/nio/ByteBuffer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$buf",
            "val$width",
            "val$height"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->d:Lnet/nfet/flutter/printing/PrintingJob$c;

    iput-object p2, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->a:Ljava/nio/ByteBuffer;

    iput p3, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->b:I

    iput p4, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->d:Lnet/nfet/flutter/printing/PrintingJob$c;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$c;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->d:Lnet/nfet/flutter/printing/PrintingJob$c;

    iget-object v1, v1, Lnet/nfet/flutter/printing/PrintingJob$c;->d:Lnet/nfet/flutter/printing/PrintingJob;

    iget-object v2, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->a:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget v3, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->b:I

    iget v4, p0, Lnet/nfet/flutter/printing/PrintingJob$c$a;->c:I

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/nfet/flutter/printing/PrintingHandler;->f(Lnet/nfet/flutter/printing/PrintingJob;[BII)V

    return-void
.end method
