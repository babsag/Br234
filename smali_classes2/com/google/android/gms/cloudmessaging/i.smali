.class final synthetic Lcom/google/android/gms/cloudmessaging/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/c;

.field private final b:Lcom/google/android/gms/cloudmessaging/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;Lcom/google/android/gms/cloudmessaging/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/i;->a:Lcom/google/android/gms/cloudmessaging/c;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/i;->b:Lcom/google/android/gms/cloudmessaging/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/i;->a:Lcom/google/android/gms/cloudmessaging/c;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/i;->b:Lcom/google/android/gms/cloudmessaging/m;

    .line 2
    iget v1, v1, Lcom/google/android/gms/cloudmessaging/m;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/c;->b(I)V

    return-void
.end method
