.class public final synthetic Lcaf/io/i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/j;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/i0;->a:Lcaf/io/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcaf/io/i0;->a:Lcaf/io/j;

    invoke-interface {v0}, Lcaf/io/j;->a()V

    return-void
.end method
