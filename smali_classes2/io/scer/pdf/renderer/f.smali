.class public final synthetic Lio/scer/pdf/renderer/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/scer/pdf/renderer/f;->a:Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;

    iput-object p2, p0, Lio/scer/pdf/renderer/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/scer/pdf/renderer/f;->a:Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;

    iget-object v1, p0, Lio/scer/pdf/renderer/f;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->d(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/Object;)V

    return-void
.end method
