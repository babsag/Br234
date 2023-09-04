.class public final synthetic Lcaf/io/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/L;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/o0;->a:Lcaf/io/L;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcaf/io/o0;->a:Lcaf/io/L;

    invoke-static {v0}, Lcaf/io/L;->R(Lcaf/io/L;)V

    return-void
.end method
