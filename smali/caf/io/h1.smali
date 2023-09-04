.class public final synthetic Lcaf/io/h1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/h;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/h1;->a:Lcaf/io/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcaf/io/h1;->a:Lcaf/io/h;

    invoke-static {v0}, Lcaf/io/h;->k(Lcaf/io/h;)V

    return-void
.end method
