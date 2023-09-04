.class public final synthetic Lcaf/io/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/Q;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/w0;->a:Lcaf/io/Q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcaf/io/w0;->a:Lcaf/io/Q;

    invoke-static {v0}, Lcaf/io/Q;->m(Lcaf/io/Q;)V

    return-void
.end method
