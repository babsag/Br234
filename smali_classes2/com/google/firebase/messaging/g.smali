.class final synthetic Lcom/google/firebase/messaging/g;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/g;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/g;->b:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->f(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
