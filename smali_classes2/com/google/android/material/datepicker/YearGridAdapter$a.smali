.class Lcom/google/android/material/datepicker/YearGridAdapter$a;
.super Ljava/lang/Object;
.source "YearGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/YearGridAdapter;->b(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/YearGridAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/YearGridAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/YearGridAdapter$a;->b:Lcom/google/android/material/datepicker/YearGridAdapter;

    iput p2, p0, Lcom/google/android/material/datepicker/YearGridAdapter$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/YearGridAdapter$a;->a:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter$a;->b:Lcom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {v0}, Lcom/google/android/material/datepicker/YearGridAdapter;->a(Lcom/google/android/material/datepicker/YearGridAdapter;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->n()Lcom/google/android/material/datepicker/f;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/f;->c:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/f;->b(II)Lcom/google/android/material/datepicker/f;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter$a;->b:Lcom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {v0}, Lcom/google/android/material/datepicker/YearGridAdapter;->a(Lcom/google/android/material/datepicker/YearGridAdapter;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->l()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->e(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/f;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter$a;->b:Lcom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {v0}, Lcom/google/android/material/datepicker/YearGridAdapter;->a(Lcom/google/android/material/datepicker/YearGridAdapter;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->s(Lcom/google/android/material/datepicker/f;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/datepicker/YearGridAdapter$a;->b:Lcom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {p1}, Lcom/google/android/material/datepicker/YearGridAdapter;->a(Lcom/google/android/material/datepicker/YearGridAdapter;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$k;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$k;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->t(Lcom/google/android/material/datepicker/MaterialCalendar$k;)V

    return-void
.end method
