.class final synthetic Lcom/google/firebase/messaging/l0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/messaging/m0;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/l0;->a:Lcom/google/firebase/messaging/m0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/l0;->a:Lcom/google/firebase/messaging/m0;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/m0;->b()V

    return-void
.end method
