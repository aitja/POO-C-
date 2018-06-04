#pragma once

namespace Webbrowser {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	/// <summary>
	/// Description résumée de MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: ajoutez ici le code du constructeur
			//
		}

	protected:
		/// <summary>
		/// Nettoyage des ressources utilisées.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::Button^  btnback;
	protected:
	private: System::Windows::Forms::Button^  btnforward;
	private: System::Windows::Forms::TextBox^  TXTNAV;
	private: System::Windows::Forms::Button^  btnNavigate;
	private: System::Windows::Forms::WebBrowser^  webBrowser1;

	private:
		/// <summary>
		/// Variable nécessaire au concepteur.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
		/// le contenu de cette méthode avec l'éditeur de code.
		/// </summary>
		void InitializeComponent(void)
		{
			this->btnback = (gcnew System::Windows::Forms::Button());
			this->btnforward = (gcnew System::Windows::Forms::Button());
			this->TXTNAV = (gcnew System::Windows::Forms::TextBox());
			this->btnNavigate = (gcnew System::Windows::Forms::Button());
			this->webBrowser1 = (gcnew System::Windows::Forms::WebBrowser());
			this->SuspendLayout();
			// 
			// btnback
			// 
			this->btnback->Location = System::Drawing::Point(16, 14);
			this->btnback->Name = L"btnback";
			this->btnback->Size = System::Drawing::Size(18, 23);
			this->btnback->TabIndex = 0;
			this->btnback->Text = L"<";
			this->btnback->UseVisualStyleBackColor = true;
			this->btnback->Click += gcnew System::EventHandler(this, &MyForm::btnback_Click);
			// 
			// btnforward
			// 
			this->btnforward->Location = System::Drawing::Point(40, 14);
			this->btnforward->Name = L"btnforward";
			this->btnforward->Size = System::Drawing::Size(18, 23);
			this->btnforward->TabIndex = 1;
			this->btnforward->Text = L">";
			this->btnforward->UseVisualStyleBackColor = true;
			this->btnforward->Click += gcnew System::EventHandler(this, &MyForm::btnforward_Click);
			// 
			// TXTNAV
			// 
			this->TXTNAV->Location = System::Drawing::Point(70, 16);
			this->TXTNAV->Name = L"TXTNAV";
			this->TXTNAV->Size = System::Drawing::Size(623, 20);
			this->TXTNAV->TabIndex = 2;
			this->TXTNAV->TextChanged += gcnew System::EventHandler(this, &MyForm::TXTNAV_TextChanged);
			// 
			// btnNavigate
			// 
			this->btnNavigate->Location = System::Drawing::Point(699, 16);
			this->btnNavigate->Name = L"btnNavigate";
			this->btnNavigate->Size = System::Drawing::Size(67, 23);
			this->btnNavigate->TabIndex = 3;
			this->btnNavigate->Text = L"Navigate";
			this->btnNavigate->UseVisualStyleBackColor = true;
			this->btnNavigate->Click += gcnew System::EventHandler(this, &MyForm::btnNavigate_Click);
			// 
			// webBrowser1
			// 
			this->webBrowser1->Anchor = static_cast<System::Windows::Forms::AnchorStyles>((((System::Windows::Forms::AnchorStyles::Top | System::Windows::Forms::AnchorStyles::Bottom)
				| System::Windows::Forms::AnchorStyles::Left)
				| System::Windows::Forms::AnchorStyles::Right));
			this->webBrowser1->Location = System::Drawing::Point(16, 43);
			this->webBrowser1->MinimumSize = System::Drawing::Size(20, 20);
			this->webBrowser1->Name = L"webBrowser1";
			this->webBrowser1->Size = System::Drawing::Size(750, 413);
			this->webBrowser1->TabIndex = 4;
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(778, 468);
			this->Controls->Add(this->webBrowser1);
			this->Controls->Add(this->btnNavigate);
			this->Controls->Add(this->TXTNAV);
			this->Controls->Add(this->btnforward);
			this->Controls->Add(this->btnback);
			this->Name = L"MyForm";
			this->Text = L"GOOGLE SCHOLAR PUB";
			this->Load += gcnew System::EventHandler(this, &MyForm::MyForm_Load);
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion
	private: System::Void TXTNAV_TextChanged(System::Object^  sender, System::EventArgs^  e) {
	}
private: System::Void btnback_Click(System::Object^  sender, System::EventArgs^  e) {
  webBrowser1->GoBack();
}
private: System::Void btnforward_Click(System::Object^  sender, System::EventArgs^  e) {
	webBrowser1->GoForward();
}
private: System::Void btnNavigate_Click(System::Object^  sender, System::EventArgs^  e) {
	webBrowser1->Navigate(TXTNAV->Text);
}
private: System::Void MyForm_Load(System::Object^  sender, System::EventArgs^  e) {
}
};
}
