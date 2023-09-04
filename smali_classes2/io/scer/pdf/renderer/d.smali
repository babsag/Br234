.class public final synthetic Lio/scer/pdf/renderer/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;


# direct methods
.method public synthetic constructor <init>(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/scer/pdf/renderer/d;->a:Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/scer/pdf/renderer/d;->a:Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;

    invoke-static {v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->b(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;)V

    return-void
.end method
